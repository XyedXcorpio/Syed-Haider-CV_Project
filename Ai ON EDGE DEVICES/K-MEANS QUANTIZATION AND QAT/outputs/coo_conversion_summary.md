# COO Format Conversion Summary
## Sparsity Statistics
- **CIFAR-10 Overall Sparsity**: 70.00%
- **CIFAR-10 Total Parameters**: 15,275,712
- **CIFAR-10 Nonzero Parameters**: 4,582,714
- **CIFAR-100 Overall Sparsity**: 70.00%
- **CIFAR-100 Total Parameters**: 15,644,352
- **CIFAR-100 Nonzero Parameters**: 4,693,306
## Storage
- **CIFAR-10 COO Format Size**: 153.32 MB
- **CIFAR-10 Original Size (FP32)**: 58.27 MB
- **CIFAR-10 Compression Ratio**: 0.38x
- **CIFAR-100 COO Format Size**: 154.87 MB
- **CIFAR-100 Original Size (FP32)**: 59.68 MB
- **CIFAR-100 Compression Ratio**: 0.39x
## Format Details
- **Number of Layers (CIFAR-10)**: 16
- **Number of Layers (CIFAR-100)**: 16
- **Format**: COO (Coordinate format)
- **Storage**: Indices + Values + Shape
## Files Saved
- `models/pruned_model_coo_cifar10.pth` - CIFAR-10 COO format weights
- `models/pruned_model_coo_cifar100.pth` - CIFAR-100 COO format weights
- `outputs/pruned_model_metadata_cifar10.json` - CIFAR-10 metadata
- `outputs/pruned_model_metadata_cifar100.json` - CIFAR-100 metadata
---