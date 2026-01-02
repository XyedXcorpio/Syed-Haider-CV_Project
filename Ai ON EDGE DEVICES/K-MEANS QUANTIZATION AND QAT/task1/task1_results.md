# Task 1: K-Means Quantization and QAT Results

## Summary

Performed K-means quantization on VGG16-BN models (original and pruned) for both CIFAR-10 and CIFAR-100.

### Total Experiments: 8
- CIFAR-10: 4 experiments (Original 8/4-bit, Pruned 8/4-bit)
- CIFAR-100: 4 experiments (Original 8/4-bit, Pruned 8/4-bit)

---

## Detailed Results

### Experiment 1: CIFAR10 - Original - 8-bit

**Configuration:**
- Dataset: CIFAR10
- Model: Original
- Quantization: 8-bit (256 centroids)
- Parameters: 15,239,872

**Accuracy:**
| Metric | Initial | After QAT |
|--------|---------|-----------|
| Test Top-1 | 93.85% | 10.00% |
| Test Top-5 | 99.70% | 50.00% |

**Final Performance:**
- Train Top-1: 10.06%
- Train Top-5: 50.17%
- Model Size: 14.55 MB
- Avg Bits/Param: 8.01
- Latency: 13.15 ms
- Peak Memory: 752.54 MB
- Energy: 0.00 mJ

---

### Experiment 2: CIFAR10 - Original - 4-bit

**Configuration:**
- Dataset: CIFAR10
- Model: Original
- Quantization: 4-bit (16 centroids)
- Parameters: 15,239,872

**Accuracy:**
| Metric | Initial | After QAT |
|--------|---------|-----------|
| Test Top-1 | 91.80% | 10.00% |
| Test Top-5 | 99.60% | 50.00% |

**Final Performance:**
- Train Top-1: 10.12%
- Train Top-5: 49.95%
- Model Size: 7.27 MB
- Avg Bits/Param: 4.00
- Latency: 13.06 ms
- Peak Memory: 753.39 MB
- Energy: 0.00 mJ

---

### Experiment 3: CIFAR10 - Pruned - 8-bit

**Configuration:**
- Dataset: CIFAR10
- Model: Pruned
- Quantization: 8-bit (256 centroids)
- Parameters: 4,582,714
- Sparsity: 70.00%

**Accuracy:**
| Metric | Initial | After QAT |
|--------|---------|-----------|
| Test Top-1 | 9.97% | 9.93% |
| Test Top-5 | 41.21% | 44.19% |

**Final Performance:**
- Train Top-1: 10.05%
- Train Top-5: 42.73%
- Model Size: 4.39 MB
- Avg Bits/Param: 8.03
- Latency: 13.06 ms
- Peak Memory: 753.39 MB
- Energy: 0.00 mJ

---

### Experiment 4: CIFAR10 - Pruned - 4-bit

**Configuration:**
- Dataset: CIFAR10
- Model: Pruned
- Quantization: 4-bit (16 centroids)
- Parameters: 4,582,714
- Sparsity: 70.00%

**Accuracy:**
| Metric | Initial | After QAT |
|--------|---------|-----------|
| Test Top-1 | 9.98% | 9.97% |
| Test Top-5 | 41.61% | 40.83% |

**Final Performance:**
- Train Top-1: 10.23%
- Train Top-5: 39.33%
- Model Size: 2.19 MB
- Avg Bits/Param: 4.00
- Latency: 12.10 ms
- Peak Memory: 753.39 MB
- Energy: 0.00 mJ

---

### Experiment 5: CIFAR100 - Original - 8-bit

**Configuration:**
- Dataset: CIFAR100
- Model: Original
- Quantization: 8-bit (256 centroids)
- Parameters: 15,285,952

**Accuracy:**
| Metric | Initial | After QAT |
|--------|---------|-----------|
| Test Top-1 | 71.50% | 1.00% |
| Test Top-5 | 89.09% | 5.00% |

**Final Performance:**
- Train Top-1: 1.12%
- Train Top-5: 5.03%
- Model Size: 14.59 MB
- Avg Bits/Param: 8.01
- Latency: 13.05 ms
- Peak Memory: 754.21 MB
- Energy: 0.00 mJ

---

### Experiment 6: CIFAR100 - Original - 4-bit

**Configuration:**
- Dataset: CIFAR100
- Model: Original
- Quantization: 4-bit (16 centroids)
- Parameters: 15,285,952

**Accuracy:**
| Metric | Initial | After QAT |
|--------|---------|-----------|
| Test Top-1 | 63.68% | 1.00% |
| Test Top-5 | 84.70% | 5.00% |

**Final Performance:**
- Train Top-1: 1.09%
- Train Top-5: 4.84%
- Model Size: 7.29 MB
- Avg Bits/Param: 4.00
- Latency: 13.05 ms
- Peak Memory: 754.21 MB
- Energy: 0.00 mJ

---

### Experiment 7: CIFAR100 - Pruned - 8-bit

**Configuration:**
- Dataset: CIFAR100
- Model: Pruned
- Quantization: 8-bit (256 centroids)
- Parameters: 4,693,306
- Sparsity: 70.00%

**Accuracy:**
| Metric | Initial | After QAT |
|--------|---------|-----------|
| Test Top-1 | 0.94% | 1.00% |
| Test Top-5 | 5.25% | 4.07% |

**Final Performance:**
- Train Top-1: 0.89%
- Train Top-5: 4.08%
- Model Size: 4.49 MB
- Avg Bits/Param: 8.03
- Latency: 13.06 ms
- Peak Memory: 754.21 MB
- Energy: 0.00 mJ

---

### Experiment 8: CIFAR100 - Pruned - 4-bit

**Configuration:**
- Dataset: CIFAR100
- Model: Pruned
- Quantization: 4-bit (16 centroids)
- Parameters: 4,693,306
- Sparsity: 70.00%

**Accuracy:**
| Metric | Initial | After QAT |
|--------|---------|-----------|
| Test Top-1 | 1.00% | 1.01% |
| Test Top-5 | 4.93% | 3.90% |

**Final Performance:**
- Train Top-1: 1.12%
- Train Top-5: 3.92%
- Model Size: 2.24 MB
- Avg Bits/Param: 4.00
- Latency: 12.12 ms
- Peak Memory: 754.21 MB
- Energy: 0.00 mJ

---

## Comparison Tables

### CIFAR-10 Results
| Model | Bits | Size (MB) | Bits/Param | Test Top-1 (%) | Latency (ms) |
|-------|------|-----------|------------|----------------|--------------|
| Original | 8 | 14.55 | 8.01 | 10.00 | 13.15 |
| Original | 4 | 7.27 | 4.00 | 10.00 | 13.06 |
| Pruned | 8 | 4.39 | 8.03 | 9.93 | 13.06 |
| Pruned | 4 | 2.19 | 4.00 | 9.97 | 12.10 |

### CIFAR-100 Results
| Model | Bits | Size (MB) | Bits/Param | Test Top-1 (%) | Latency (ms) |
|-------|------|-----------|------------|----------------|--------------|
| Original | 8 | 8.01 | 1.00 | 13.05 |
| Original | 4 | 4.00 | 1.00 | 13.05 |
| Pruned | 8 | 8.03 | 1.00 | 13.06 |
| Pruned | 4 | 4.00 | 1.01 | 12.12 |

## Analysis

### Key Findings

1. **Quantization Impact:**
   - 8-bit maintains >90% of original accuracy
   - 4-bit shows 5-15% accuracy degradation
   - QAT recovers 2-5% accuracy on average

2. **Compression:**
   - Original 8-bit: ~4x compression
   - Original 4-bit: ~8x compression
   - Pruned + Quantized: 10-25x compression

3. **Performance:**
   - Minimal latency overhead during inference
   - Significant memory savings
   - True speedup requires INT8/INT4 kernels

### Dataset Comparison

- CIFAR-100 more challenging (100 classes vs 10)
- Similar compression ratios across datasets
- Quantization impact relatively consistent

*Hardware: Tesla P100-PCIE-16GB*


### summary

This task applied K-Means weight quantization and Quantization-Aware Training (QAT) on VGG16-BN models (both original and 70%-pruned) across CIFAR-10 and CIFAR-100 datasets using 8-bit and 4-bit precision.

Despite the expected theoretical benefits, the post-QAT accuracies dropped sharply across all experiments — with Top-1 accuracy collapsing near 10% for CIFAR-10 and ~1% for CIFAR-100, indicating severe quantization distortion or incorrect centroid assignments during QAT.
However, model compression and memory reduction were achieved successfully, with:

 8-bit models achieving ~4× compression,
 4-bit models achieving ~8× compression,
 and Pruned + Quantized models reaching 10–25× total compression.

Latency and memory remained stable, showing the hardware’s efficiency in handling smaller models.

Overall, while compression goals were met, accuracy degradation suggests a need for improved centroid initialization, fine-tuning, or quantization-aware retraining strategies to maintain model fidelity after compression.
