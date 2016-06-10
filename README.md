* This repo contains Gromacs and Amber performance on various machines on different configurations. 

* Data is available inside gromacs\_data and amber\_data folders.

* The execution time is taken from md.out file for Amber runs and md.log for Gromacs runs (manually). 

**Gromacs Performance**

| Resource | 1 node | 2 nodes | 3 nodes |
|----------|--------|---------|---------|
| Stampede | 30.814 | 17.567  | 10.475  |
|   Comet  | 19.882 | 11.694  |  9.869  |
| Supermic | 48.004 | 43.603  | 19.527  |

**Amber Performance**

| Resource | 1 node | 2 nodes | 3 nodes |
|----------|--------|---------|---------|
| Stampede | 463.69 | 234.35  | 535.25  |
|   Comet  | 285.63 | 152.15  | 104.20  |
| Supermic | 346.12 | 176.67  | 120.50  |
