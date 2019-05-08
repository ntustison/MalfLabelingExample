library( ANTsR )

baseDirectory <- './'
atlasDirectory <- paste0( baseDirectory, 'Atlases/' )
labelsDirectory <- paste0( baseDirectory, 'Labels/' )

targetImage <- antsImageRead( paste0( baseDirectory, "T_template0.nii.gz" ), dimension = 2 )
targetMask <- antsImageClone( targetImage )
targetMask[targetMask == 0] <- 0
targetMask[targetMask != 0] <- 0

outputDirectory <- './OutputANTsR/'
if( ! dir.exists( outputDirectory ) )
  {
  dir.create( outputDirectory )
  }
outputPrefix <- paste0( outputDirectory, 'antsr' )

atlases <- list()
labels <- list()

for( i in seq_len( 20 ) )
  {
  atlasFile <- paste0( atlasDirectory, "OASIS-TRT-20-", i, "_slice118.nii.gz" )
  labelsFile <- paste0( labelsDirectory, "OASIS-TRT-20-", i, "_DKT31_CMA_labels_slice118.nii.gz" )

  atlas <- antsImageRead( atlasFile, dimension = 2 )
  label <- antsImageRead( labelsFile, dimension = 2 )

  cat( "Registering", atlasFile, "to target image." )

  registration <- antsRegistration( fixed = targetImage, moving = atlas,
    typeofTransform = "SyN", verbose = TRUE )
  atlases[[i]] <- registration$warpedmovout

  labels[[i]] <- antsApplyTransforms( fixed = targetImage, moving = label,
    transformlist <- registration$fwdtransforms, interpolator = "genericLabel" )

  targetMask[labels[[i]] != 0] <- 1
  }

# Plot the target image and mask
plot( targetImage, targetMask, color.overlay = "jet", alpha = 0.4 )

jlf <- jointLabelFusion( targetI = targetImage, targetIMask = targetMask,
  atlasList <- atlases, labelList = labels, verbose = TRUE )

# Write out results

antsImageWrite( jlf$segmentation, paste0( outputPrefix, "jlfSegmentation.nii.gz" ) )

lgm <- labelGeometryMeasures( jlf$segmentation )
for( i in seq_len( length( lgm$Label ) ) )
  {
  id <- lgm$Label[i]
  antsImageWrite( jlf$probabilityimages[[i]],
    paste0( outputPrefix, "jlfProbabilityLabel", id, ".nii.gz" ) )
  }

