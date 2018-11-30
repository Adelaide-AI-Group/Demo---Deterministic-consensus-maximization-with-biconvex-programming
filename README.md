# Demo---Deterministic-consensus-maximization-with-biconvex-programming

An efficient and deterministic consensus maximization method. 

Published in ECCV 2018 as **oral** presentations.

[[Paper](https://arxiv.org/pdf/1807.09436.pdf)]

About
=====

Consensus maximization is an effective tool for robust fitting in computer vision. This repository contains the demo for prevalent consensus maximization methods (see below for the list).

The demo is free for non-commercial academic use. Any commercial use is strictly 
prohibited without the authors' consent. Please acknowledge the authors by citing:

```
@inproceedings{cai2018deterministic,
  title={Deterministic Consensus Maximization with Biconvex Programming},
  author={Cai, Zhipeng and Chin, Tat-Jun and Le, Huu and Suter, David},
  booktitle={European Conference on Computer Vision},
  pages={699--714},
  year={2018},
  organization={Springer}
}
```
in any academic publications that have made use of this package or part of it.

------------------------
List of included methods
------------------------

+Random methods:

1. [RANSAC](http://delivery.acm.org/10.1145/360000/358692/p381-fischler.pdf?ip=129.127.229.14&id=358692&acc=ACTIVE%20SERVICE&key=65D80644F295BC0D%2E001A23AA3BABC648%2E4D4702B0C3E38B35%2E4D4702B0C3E38B35&__acm__=1543556593_784052ca099a175d04afeade036d626c)

2. [PROSAC](https://ieeexplore.ieee.org/document/1467271#full-text-section)

3. [Guided MLESAC](http://www.robots.ox.ac.uk/~lav/Papers/tordoff_murray_tpami2005/tordoff_murray_tpami2005.pdf)

4. [Locally Optimized RANSAC](http://cmp.felk.cvut.cz/~matas/papers/chum-dagm03.pdf) (LO-RANSAC)

5. [Fixing LO-RANSAC](http://cmp.felk.cvut.cz/software/LO-RANSAC/Lebeda-2012-Fixing_LORANSAC-BMVC.pdf)

6. [USAC](http://people.inf.ethz.ch/pomarc/pubs/RaguramPAMI13.pdf)

+Deterministic methods:

7. [The Exact Penalty (EP) method](https://arxiv.org/pdf/1710.10003.pdf)

8. [The Smooth Surrogate (SS) method](https://link.springer.com/content/pdf/10.1007/978-3-319-78199-0_21.pdf)

9. [The ADMM-based method](http://bmvc2018.org/contents/papers/0568.pdf) (to be added)

10. [Our Bi-convex Programming method](https://arxiv.org/pdf/1807.09436.pdf)

-----------------------------------------
List of robust fitting problems addressed
-----------------------------------------

+Linear:

1. Linear regression

+Nonlinear:

2. Homography estimation

3. Triangulation

+With non-convex constraints:

4. Fundamental matrix estimation (the rank-2 constraint)

