# Task 0: Baseline Model Profiling Results

## CIFAR-10 - VGG16-BN

| Metric | Value |
|--------|-------|
| **Model Size (MB)** | 58.25 |
| **Peak Memory (MB)** | 584.15 |
| **Avg Memory (MB)** | 366.16 |
| **Latency (ms/batch)** | 13.03 |
| **Energy (mJ)** | 506.66 |
| **MACs (G)** | 0.31 |
| **Test Top-1 Acc (%)** | 94.16 |
| **Test Top-5 Acc (%)** | 99.71 |
| **Train Top-1 Acc (%)** | 99.99 |
| **Train Top-5 Acc (%)** | 100.00 |

## CIFAR-100 - VGG16-BN

| Metric | Value |
|--------|-------|
| **Model Size (MB)** | 58.43 |
| **Peak Memory (MB)** | 584.17 |
| **Avg Memory (MB)** | 366.20 |
| **Latency (ms/batch)** | 12.96 |
| **Energy (mJ)** | 504.70 |
| **MACs (G)** | 0.31 |
| **Test Top-1 Acc (%)** | 71.34 |
| **Test Top-5 Acc (%)** | 88.94 |
| **Train Top-1 Acc (%)** | 99.21 |
| **Train Top-5 Acc (%)** | 99.93 |

## Comparison

| Metric | CIFAR-10 | CIFAR-100 | Difference |
|--------|----------|-----------|------------|
| Test Top-1 Acc (%) | 94.16 | 71.34 | +22.82 |
| Model Size (MB) | 58.25 | 58.43 | +0.18 |
| Latency (ms) | 13.03 | 12.96 | -0.07 |

## Notes

- Batch size: 128
- Hardware: CUDA
- Models: chenyaofo/pytorch-cifar-models (pretrained)
- Transforms: Standard CIFAR normalization + augmentation

### summary


The baseline profiling on CIFAR-10 and CIFAR-100 datasets establishes the performance and efficiency benchmarks before applying pruning or quantization.

* On CIFAR-10, the model achieves 94.16% Top-1 and 99.71% Top-5 accuracy, with a size of 58.25 MB and inference latency of 13.03 ms/batch.
* On the more challenging CIFAR-100, accuracy drops to 71.34% Top-1 and 88.94% Top-*, with similar model size 58.43 MB and latency 12.96 ms/batch.
* Both models have comparable compute cost 0.31 G MACs and energy consumption ~505 mJ.

### Key Takeaways:

* The model generalizes strongly on CIFAR-10 but shows the expected performance gap on CIFAR-100 due to increased class complexity.
* Memory usage and latency remain nearly identical across datasets, confirming that dataset complexity primarily impacts accuracy, not compute performance.
* These results serve as the reference baseline for evaluating compression techniques in subsequent tasks.
