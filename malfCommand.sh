inputPath=${PWD}/

${ANTSPATH}/antsJointLabelFusion.sh \
  -d 2 \
  -c 2 -j 4 \
  -x or \
  -o ${inputPath}/Output/example \
  -p ${inputPath}/Output/examplePosteriors%02d.nii.gz \
  -t ${inputPath}/T_template0.nii.gz \
  -o [${inputPath}/exampleOutput.nii.gz,${inputPath}/exampleOutputIntensityFusion%d.nii.gz,${inputPath}/exampleOutputPosteriors%d.nii.gz] \
  -g ${inputPath}/Atlases/OASIS-TRT-20-10_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-10_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-11_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-11_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-12_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-12_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-13_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-13_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-14_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-14_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-15_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-15_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-16_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-16_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-17_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-17_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-18_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-18_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-19_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-19_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-1_slice118.nii.gz  -l ${inputPath}/Labels/OASIS-TRT-20-1_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-20_slice118.nii.gz -l ${inputPath}/Labels/OASIS-TRT-20-20_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-2_slice118.nii.gz  -l ${inputPath}/Labels/OASIS-TRT-20-2_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-3_slice118.nii.gz  -l ${inputPath}/Labels/OASIS-TRT-20-3_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-4_slice118.nii.gz  -l ${inputPath}/Labels/OASIS-TRT-20-4_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-5_slice118.nii.gz  -l ${inputPath}/Labels/OASIS-TRT-20-5_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-6_slice118.nii.gz  -l ${inputPath}/Labels/OASIS-TRT-20-6_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-7_slice118.nii.gz  -l ${inputPath}/Labels/OASIS-TRT-20-7_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-8_slice118.nii.gz  -l ${inputPath}/Labels/OASIS-TRT-20-8_DKT31_CMA_labels_slice118.nii.gz \
  -g ${inputPath}/Atlases/OASIS-TRT-20-9_slice118.nii.gz  -l ${inputPath}/Labels/OASIS-TRT-20-9_DKT31_CMA_labels_slice118.nii.gz \
