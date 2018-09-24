#Hybrid Models Demonstrators

[Authors](#Authors)  
[Change Log](#Log)  
[1. Introduction](#Introduction)  
&nbsp;&nbsp;[1.1 Presentation](#1.1)  
&nbsp;&nbsp;[1.2 Advent of Space Age: Observations](#1.2)  
&nbsp;&nbsp;[1.3 Magnetosphere and Ionosphere Models: What's In A Name](#1.3)  
&nbsp;&nbsp;[1.4 Further Reading](#1.4)  
[2. Description of the Hybrid Numerical Model](#2)  
&nbsp;&nbsp;[2.1 The Physics of the HYB-*Model](#2.1)  
&nbsp;&nbsp;[2.2 Solving the Hybrid Model](#2.2)  
&nbsp;&nbsp;[2.3 Examples of Hybrid Simulations with HWA/Hyb-*](#2.3)  
&nbsp;&nbsp;[2.4 The Case of Venus: 3D Animations with the HYB-*Model](#2.4)  
&nbsp;&nbsp;[2.5 References of the HWA/HYB-*Model](#2.5)  
&nbsp;&nbsp;[2.6 References of the LATMOS Hybrid Model](#2.6)  
[3. Model Demonstrators](#3)  
&nbsp;&nbsp;[3.1 Hybrid Web Archive User Guide](#3.1)  
&nbsp;&nbsp;[3.2 LatHyS Interface User Guide](#3.2)  
&nbsp;&nbsp;[3.3 Methodological Recommendations for Educators](#3.3)  
[4. Useful Links](#4)  
[References](#References)  


<h2 id="Authors">Authors</h2>

To be updated.

<h2 id="Log">Change Log</h2>

| Version       | Author        | Notes  |
| ------------- |:-------------:| -----: |
| 1             | [Keyuan Yin](https://github.com/megadiesel705)| converted version from [this site](https://sites.google.com/site/impexfp7/home)|

<h2 id="Introduction">1. Introduction‎</h2>

<h3 id="1.1">1.1 Presentation</h3>

We know from observations from space that charged particles, mostly electrons and protons, are continuously ejected from the upper atmosphere of the Sun, the corona, and blown into space, forming a 'solar wind' reaching out to the farthest corners of the Solar System.  The solar wind is a plasma, that is, a medium composed of charged particles moving under the laws of electromagnetism.  It blows at speeds ranging from 400 to 800 km/s.  Intermittently, bursts of high-speed solar wind are recorded, which corresponds to a higher level of solar activity.   A typical solar activity cycle from low to high lasts 11 years, the last maximum of activity being in 2013 (see for instance [at this link](http://solarscience.msfc.nasa.gov/predict.shtml)).   

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/1_Presentation.png" width="500" alt="1">  

*Illustration 1: Sun-planets connections.  A shower of solar wind particles originating from the Sun pervades space and influences the space environment of planets, including that of the Earth, giving rise to so-called “geomagnetic storms” and aurora at high geomagnetic latitudes.  Present and future satellites orbiting in space provide scientists with precious in-situ data that can be used in combination with numerical models to understand better these phenomena. ©ESA*  


Predicting the Sun's wrath, the consequence on the immediate vicinity of planets and its effect on our technology-based environment is the purpose of Space Weather.  Space weather makes use of remote and in-situ observations in combination with numerical simulations (see Illustration 1).  

The solar wind interacts with many solar system planetary objects, giving rise to many fluid and kinetic effects which are best simulated by numerical plasma models that include the physics and the chemistry at the origin of the formation of heavier ions in the vicinity of planets.  These models solve the equations of motion of the planetary and solar-wind plasmas in an electromagnetic field.   

The goal of the Hybrid Web Archive HWA [http://hwa.fmi.fi/beta/] developed at the Finnish Meteorological Institute (FMI) and that of the LATMOS Hybrid Simulation Database LatHyS [http://impex.latmos.ipsl.fr] provided by Laboratoire Atmosphères, Milieux, Observations Spatiales (LATMOS) is to study such phenomena at different scales, for different planetary objects and under various solar activity conditions.  

The model used by HWA is FMI's hybrid model HYB, described at http://space.fmi.fi/HWA/hyb/ with examples and illustrations.
A brief description of the core of the LATMOS model used in the LatHyS database is available at http://impex.latmos.ipsl.fr/doc/Hybrid_model_documentation.pdf. It describes the main features of the algorithm used in the hybrid model developed at LATMOS and gives a flavour of the numerical methods used in this model.  

A synergy between numerical simulations including the necessary physics and observational datasets as complete as possible is the only way to make sense of the complexity of Space Physics phenomena. IMPEx strives to maximize the usage of space observations and encourage this synergy.  

<h3 id="1.2">1.2 Advent of Space Age: Observations</h3>

At the turn of the 20th century, Norwegian physicist Kristian Birkeland had the idea of building a space simulator to explain the mechanisms at the origin of the aurora: he showed that after immersing a magnetised sphere in an adequate vacuum, bombarding it with free electrons produced a glow which morphology and characteristics were not unlike the aurora he observed many times during his campaigns above the Arctic circle.  Modern space physics was born.  

Fifty years later his predictions and concept of trapped charged particles in a magnetic field, originally met with skepticism, found themselves confirmed by the first satellite observations, such as that of Explorer 1 in 1958 (the scientific payload was built at the University of Iowa, under the direction of James van Allen, who later gave his name to the Earth's radiation belts).  

Since the advent of the space age, more than 50 scientific missions have been launched mostly by the American Space Agency (NASA) and by the European Space Agency (ESA) to study the magnetospheric environments of the Earth and other planetary objects, which is the basis of our current understanding of these systems.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/2_Illus_2.png" width="500" alt="2"> 

*Illustration 2: For each object its space mission, top left to bottom right: Mercury, Venus, Earth, Mars, Jupiter, Saturn, Pluto-Kuiper belt, comets, with emphasis on ESA missions. © ESA, NASA*  

The current fleet of satellites still in operation or already en route and dedicated to space physics includes (but is not limited to):  

- Sun: **SOHO (1995)**, *ACE (1997), STEREO (2006), IBEX (2008), Solar Dynamics Observatory (2010)*  
- Mercury: *Messenger (2009)*  
- Venus: **Venus Express (2002)**  
- Earth and Moon: *WIND (1994)*, **Cluster II (2000)**, *TIMED (2001), THEMIS/ARTEMIS (2007, 2011), TWINS (2008)*, **PROBA-2 (2009)**, *Van Allen Probes (2012)*, **SWARM (2013)**, *LADEE (2013)*    
- Mars: **Mars Express (2003)**, *MAVEN (2014)*, Mars Orbiter Mission (2014)
Jupiter: *Juno (2016)*  
- Saturn:  *Cassini (1997)*  
- Pluto/Charon and Kuiper belt:  *New Horizons (2015)*  
- Comets: **Rosetta (2014)**  

(colour code: **Bold** = ESA missions, *Italic* = NASA missions, normal = Indian Space Agency)

Logos and emblems for a chosen set of missions characteristic of each solar system object are shown in Illustration 2.  For a comprehensive review of missions, either past, in flight or future ones, NASA is maintaining a search [tool at](http://solarsystem.nasa.gov/missions/).  


<h3 id="1.3">1.3 Magnetosphere and Ionosphere Models: What's In A Name</h3>

In parallel to space remote and in-situ observatories, physical models have been developed to account for the observations and to predict the state of the space environment of the solar system objects.  Several descriptions have been historically used, which are complementary: kinetic, fluid and hybrid.  They are obtained by extending the kinetic theory of gases (see Boltzmann) and the hydrodynamics of fluids to the plasma state of matter.  Each description is indicated for certain characteristic time and spatial scales (see Fig. 2 of Winske and Omidi, 1996, for a two-dimensional space-time representation).  This remark is illustrated in Illustration 3 when looking at the characteristic frequencies f of the plasma, i.e., electron plasma frequency ωpe, ion plasma frequency ωpi, ion gyrofrequency ωci, Alfvén frequency ωa, and electron-ion collision frequency ωei.  

There are three basic self-consistent approaches to describe space plasmas: (a) kinetic -, (b) hybrid- and (c) fluid approaches:  

- (a) Kinetic description:  
The most fundamental description of plasma is the kinetic one where the position of particles is known in phase space, that is the space of all possible values of position and momentum variables.  In the kinetic description, even the electron scale is accessible. Two different kinds of approaches may be used: [1] based on a distribution function and [2] based on individual (macro) ions. In case [1] the microscopic distribution function f in 6 dimensions (3 of space, 3 of velocity) represents all there is to know about the plasma state: in other words, f is the number of particles per unit volume having a given velocity at a certain time. The evolution of the plasma is described most generally by the Boltzmann dissipative equation, introduced by Ludwig Boltzmann in 1872. These kinetic models aim at solving precisely this equation. Macroscopic quantities such as number density, velocity, energy and heat transfer can be accessed by integrating the distribution function over velocity space.  In the other approach [2] particles are modelled as “macro particles” of “particle clouds” which are accelerated by the Lorentz force, gravitational force, etc.  Because kinetic simulations are computationally extremely demanding, most kinetic models are restrained to 1D studies.  The HYB-em Particle-In-Cell (PIC) electromagnetic model developed at FMI (see Pohjola and Kallio, 2010), based on the HYB-* platform but considering both electrons and ions as particles, is one such full kinetic model.  

- (b) Hybrid kinetic/fluid description:  
Hybrid models adopt the standpoint where ions are seen as particles and electrons become a massless fluid. The advantage of such a method is that the small-scale physics is more accurately described since no assumption on the form of the distribution function is made.  One of the main caveats of hybrid models is that they require a large number of particles to reach statistically significant results. Thanks to increasing computational resources, hybrid models have become more and more popular over the last 10 years.  The HYB-* platform developed at FMI as well as the LATMOS model belong to this category and are described in more detail below.  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/3_Illus_3.png" width="500" alt="3">


*Illustration 3: Kinetic, hybrid and fluid domains from the point of view of characteristic frequencies.*  


- (c) Fluid description:  
This description refers to any simplified plasma model that deals with quantities averaged over velocity space, hence, necessarily, with macroscopic quantities. Introduced by Hannes Alfvén as soon as 1942 in its ideal form, magnetohydrodynamics (MHD) assumes that the plasma behaves as a fluid embedded in its magnetic field upon which the Lorentz force acts.  One shortcoming of this approach is that it implicitly assumes that the plasma is collisional with particle distributions having Maxwellian distributions, a condition which, in practice, is not met for smaller scale structures. The advantage of the MHD approach is that it is computationally much less expensive than kinetic and hybrid approaches and, therefore, it provides the possibility to obtain a good spatial resolution as well as to model large space regions. The model GUMICS developed at FMI belongs to this category.  


<h3 id="1.4">1.4 Further Reading</h3>

A recent review of available models and approaches:  

- Kallio, E., J-Y Chaufray, R. Modolo, D. Snowden and R. Winglee, Modeling of Venus, Mars, and Titan, Space Science Reviews, DOI 10.1007/s11214-011-9814-8, 2011.  
- Distinction between Kinetic, Hybrid and Fluid plasma models, and introduction to kinetic simulations with differences in the modelled physics:  
Winske, D., and N. Omidi (1996), A nonspecialist's guide to kinetic simulations of space plasmas, J. Geophys. Res., 101(A8), 17287–17303, doi:10.1029/96JA00982.  

- General textbooks about numerical simulations in plasma physics:  
C. K. Birdsall and A. B. Langdon, Plasma physics via computer simulation, Series in Plasma Physics, Taylor & Francis Ltd, New York, 2004, ISBN 9780750310253.  
R. W. Hockney, J. W. Eastwood, Computer Simulation Using Particles, McGraw-Hill, New York, 1981, ISBN 9780852743928.  
Lecture notes by R. Modolo, G. Aulanier and S. Hess (Jan. 2013), available at:
http://impex.latmos.ipsl.fr/doc/Computational_plasma_physics.pdf  

<h2 id="2">2. Description of the Hybrid Numerical Model</h2>

<h3 id="2.1">2.1 The Physics of the HYB-*Model</h3>

Hybrid and kinetic plasma simulations dedicated to planetary plasma interactions are currently developed at the FMI and at LATMOS. These platforms are developed for the interactions between non-magnetized or weakly magnetized Solar System bodies and the plasma flow such as the solar wind.  

In the hybrid approach ions are treated self-consistently as particles moving in the electric and magnetic fields and electrons are modelled as a charge neutralizing fluid. For comparison, in the full kinetic model both ions and electrons would have been treated as particles.  

The HWA/HYB-* platform of FMI has been used to study the solar wind interactions of several objects such as Mercury, Venus, the Moon, Mars, Ceres, Pluto and comets [http://space.fmi.fi/HWA/hyb/refs.php]. Furthermore, the platform has been used to study the interaction of Titan with Saturn's magnetospheric plasma and magnetic field. Kinetic modelling within HYB-* has been applied to the lunar plasma and dust environment. Details of the HYB-* hybrid simulation model are described, for example, in Kallio & Janhunen (2003) or here: http://space.fmi.fi/HWA/hyb/.  

Similarly, a brief description of the core of the LATMOS model is available on the LatHyS website with the current version documentation 
[http://impex.latmos.ipsl.fr/doc/Hybrid_model_documentation.pdf].  

The LATMOS hybrid model has been used and adapted to investigate the solar wind interaction with Mars and Mercury, as well as the interaction of the Jovian magnetospheric plasma with Ganymede and the Kronian magnetospheric plasma with Titan (see Modolo et al., 2005 and Modolo and Chanteur, 2008 for numerical details).  

The Quasi-Neutral Hybrid model 
(see also http://space.fmi.fi/HWA/hyb/eqs.html, http://impex.latmos.ipsl.fr/tools/DataModel.htm)  

The HYB simulation code is originally based on the quasi-neutral hybrid (QNH) description of plasma. Positively charged ions are treated explicitly as kinetic particles and electrons are modelled as a charge-neutralizing, massless MHD fluid.  The ions and the electromagnetic fields are self-consistently coupled to each other.  The implicit treatment of electrons by the fluid momentum equation defines the electric field.  Physical laws that define the QNH model are the following.   

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/4_.png" width="500" alt="4">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/5_.png" width="500" alt="5">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/6_.png" width="500" alt="6">

Summary:  

Assumptions:  

- Quasi-neutrality  
- Maxwell's equations solved consistently  
- Ions accelerated by Lorentz force, gravitation, and forces  
- Magnetic field propagated using Faraday's law  

Physical inputs:  

- Object: Diameter and mass of the planet, gravity, intrinsic magnetic field, atmosphere & ionosphere, electric conductivity
- Flowing plasma (e.g., the solar wind): Density of ions, velocity distribution of ions, electron temperature, the ambient magnetic field (e.g., the Interplanetary magnetic field, IMF)


<h3 id="2.2">2.2 Solving the Hybrid Model</h3>

**Example of the HYB-* platform (FMI): step-by-step**

Equations of the QNH HYB model are solved by starting with initial values for the ions (positions and velocities) and the magnetic field in the simulation domain.  

1. the current density is obtained from the magnetic field by Ampère's law
2. the electron charge density comes from the quasi-neutrality assumption in a grid cell  
3. the velocity field of the electron fluid is determined from the definition of the current density  
4. the electric field is calculated from the electron momentum equation  
5. magnetic field is advanced by the Faraday's law  
6. particles are moved and accelerated by the Lorentz force  

**Numerical solution: solving the hybrid model equations**  

Numerical approaches are chosen which may differ from one model to another.  

- **LatHyS LATMOS model**  
The interested reader is referred, for example, to the lecture notes given by R. Modolo at University of Versailles/ University Pierre et Marie Curie – Paris and available on the LatHyS website:
[http://impex.latmos.ipsl.fr/doc/Computational_plasma_physics.pdf] for the LATMOS model. Note that the lecture notes will be translated from French to English and merged to the current Hybrid model documentation.  Leap-frog, Runge-Kutta, Boris-Buneman techniques, Courant-Friedrichs-Lewy condition, etc. used for hybrid models are described in the corresponding literature.  

- **HWA/HYB-* model**  
In a similar way, the HWA/HYB-* platform is described in great technical details in Kallio and Janhunen (2003): Kallio E. and P. Janhunen, Modelling the Solar Wind Interaction With Mercury by a Quasineutral Hybrid Model, Ann. Geophys., 21(11), 2133-2145, doi:10.5194/angeo-21-2133-2003, 2003  

For each model, the boundary conditions and technical assumptions will be provided later.  

A list of references concerning the hybrid models and their application and general references useful for students will also be provided and completed later in the project.  

<h3 id="2.3">2.3 Examples of Hybrid Simulations with HWA/Hyb-*
</h3>

→ see also http://space.fmi.fi/HWA/hyb/examples.html  

Example use cases of the HYB simulation platform.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/7_2_3.png" width="500" alt="7">

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/8_2_3.png" width="500" alt="8">

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/9_2_3.png" width="500" alt="9">

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/10_2_3.png" width="500" alt="10">

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/11_2_3.png" width="500" alt="11">

<h3 id="2.4">2.4 The Case of Venus: 3D Animations with the HYB-*Model</h3>

→ see also http://space.fmi.fi/HWA/hyb/animations.php  

**Case 1: Solar storm at Venus**  

The HYB model can be used to study time-dependent planetary plasma environments.  Illustration 9 illustrates how Venus' plasma environment is disturbed when hit by a solar disturbance.  In the simulation the disturbance is a short duration density enhancement in the solar wind.  

Note how the space weather disturbance "shakes" the whole plasma environment of Venus, triggering in its wake instabilities and turbulence in the plasma, which after some time returns back to an equilibrium state.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/12_2_4.png" width="500" alt="12">  

*Illustration 9: HYB numerical simulation showing how a space weather disturbance coming from the top of the picture affects Venus' plasma environment. The colour gives the density of the solar wind in two perpendicular planes: the z=0 plane (the horizontal plane) and the y=0 plane (the vertical plane). The plasma is dense in the red regions and tenuous in the blue regions. The vantage point is from the tail of Venus' magnetosphere toward the Sun (top left of the animation). Time shown on the top of the figure is in milliseconds (10–3s) and the total simulated time (t) is about 700 seconds. The disturbance, a density enhancement shown as a red "wall", enters into the simulation box at t ~ 300 s and has moved through the entire simulation box by t ~ 410 s. (HYB animation by R. Järvinen/FMI). [http://space.fmi.fi/HWA/hyb/animations/venus_2d_dyn_short.ogv]*  

**Case 2: Atmospheric erosion at Venus**  

The HYB simulation is capable of giving a three dimensional (3D) view of the plasma physical processes.  Illustration 10 illustrates how the density of atomic oxygen ions (O+) escaping from Venus would look like at different positions around Venus in the HYB simulation.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/13_2_4.png" width="500" alt="13">

*Illustration 10: Escaping planetary atomic oxygen ions (O+) viewed by a virtual spacecraft orbiting around Venus using the HYB model. The colours on two perpendicular planes and on a spherical shell just above the planet give the density of oxygen ions (red: high density; dark blue: low density). The density of each dot gives the density of the oxygen ions in a 3D space. Note how the escaping oxygen ions form an ion tail behind the planet. (HYB animation by R. Järvinen/FMI). [http://space.fmi.fi/HWA/hyb/animations/venus_hyb_oxygen_anibig.gif*  

**Case 3: Stowaway aboard a spacecraft: How Venus Express sees Venus' environment**  
  
The HYB model can also be used to obtain a better insight about regions through which a spacecraft might fly.  In Illustration 11 the view point is moving along a true orbit of ESA's Venus Express spacecraft [http://www.esa.int/Our_Activities/Space_Science/Venus_Express; http://sci.esa.int/venus-express/].  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/14_2_4.png" width="500" alt="14">

*Illustration 11: Fly-through Venus' plasma regions along the Venus Express (VEX) spacecraft orbit No. 182, as simulated by the HYB model. In the animation, the colours on two perpendicular planes give the density of the solar wind (red: high density; dark blue: low density). At the beginning VEX is above Venus' geographical North pole and then starts to move along a highly elliptic one-day orbit toward the closest point (~200 km) of the orbit near the South pole. (HYB animation by R. Järvinen/FMI). [http://space.fmi.fi/HWA/hyb/animations/vexorbit0182_dx_303km.ogv]  *  

<h3 id="2.5">2.5 References of the HWA/HYB-*Model</h3>

→ http://space.fmi.fi/HWA/hyb/refs.php  

A list of references in reverse chronological order is presented below:  


[Solar System objects] Dyadechkin, S., E. Kallio, and R. Jarvinen, A new 3-D spherical hybrid model for solar wind interaction studies, J. Geophys. Res., 118, 5157–5168, doi:10.1002/jgra.50497 , 2013  

[Venus] Jarvinen R., Kallio E., Dyadechkin S., Hemispheric asymmetries of the Venus plasma environment, J. Geophys. Res. 118, 1-13, doi:10.1002/jgra.50387, 2013  

[Mars] Kallio E., S. McKenna-Lawlor, M. Alho, R. Jarvinen, S. Dyadechkin and V.V. Afonin, Energetic protons at Mars: Interpretation of SLED/Phobos-2 observations by a kinetic model, Ann. Geophys., 30, 1595-1609, doi:10.5194/angeo-30-1595-2012, 2012  

[Moon] Kallio E., R. Jarvinen, S. Dyadechkin, P. Wurz, S. Barabash, F. Alvarez, V. A. Fernandes, F. Yoshifumi, A.-M. Harri, J. Heilimo, C. Lue, J. Makela, N. Porjo, W. Schmidt and T. Siili, Kinetic simulations of finite gyroradius effects in the lunar plasma environment on global, meso, and microscales, Planet. Space Sci., 74 (1), 146-155, doi:10.1016/j.pss.2012.09.012, 2012  

[Mars] Diéval C., E. Kallio, S. Barabash, G. Stenberg, H. Nilsson, Y. Futaana, M. Holmström, A. Fedorov, R. A. Frahm, R. Jarvinen and D.A. Brain, A case study of proton precipitation at Mars: Mars Express observations and hybrid simulations, J. Geophys. Res., 117, A06222, doi:10.1029/2012JA017537, 2012  
 
[Mars] McKenna-Lawlor S., E. Kallio, R. Jarvinen and V.V. Afonin, Magnetic shadowing of high energy ions at Mars: SLED/Phobos-2 observations and hybrid model simulations, Earth Planets Space, 64 (2), 247-256, doi:10.5047/eps.2011.06.039, 2012   

[Mars, Venus and a comet] Kallio E. and R. Jarvinen, Kinetic effects on plasma escape at Mars and Venus: Hybrid modeling studies, Earth Planets Space, 64 (2), 157-163, doi:10.5047/eps.2011.08.014, 2012  

[Mars] Kallio E. and S. Barabash, Magnetized Mars: Spatial distribution of oxygen ions, Earth Planets Space, 64 (2), 149-156, doi:10.5047/eps.2011.07.008, 2012  

[Mars] Diéval C., E. Kallio, G. Stenberg, S. Barabash and R. Jarvinen, Hybrid simulations of proton precipitation patterns onto the upper atmosphere of Mars, Earth Planets Space, 64 (2), 121-134, doi:10.5047/eps.2011.08.015, 2012  

[Titan] Sillanpää I., D.T. Young, F. Crary, M. Thomsen, D. Reisenfeld, J.-E. Wahlund, C. Bertucci, E. Kallio, R. Jarvinen, and P. Janhunen, Cassini Plasma Spectrometer and hybrid model study on Titan's interaction: Effect of oxygen ions, J. Geophys. Res., 116, A07223, doi:10.1029/2011JA016443, 2011  

[Venus] Jarvinen R., E. Kallio, S. Dyadechkin, P. Janhunen and I. Sillanpää, Widely different characteristics of oxygen and hydrogen ion escape from Venus, Geophys. Res. Lett., 37, L16201, doi:10.1029/2010GL044062, 2010  

[Venus] Zhang T.L., W. Baumjohann, J. Du, R. Nakamura, R. Jarvinen, E. Kallio, A. Du, M. Balikhin, J.G. Luhmann and C.T. Russell, Hemispheric asymmetry of the magnetic field wrapping pattern in the Venusian magnetotail, Geophys. Res. Lett., 37, L14202, doi:10.1029/2010GL044020, 2010  

[Venus] Jarvinen R., E. Kallio, P. Janhunen, V. Pohjola and I. Sillanpää, Grid convergence of the HYB-Venus hybrid simulation, Astronomical Society of the Pacific Conference Series, Numerical Modeling of Space Plasma Flows: ASTRONUM-2009, ASP Conference Series, 429, 2010  

[Solar System objects] Pohjola V. and E. Kallio, On the modeling of planetary plasma environments by a fully kinetic electromagnetic global model HYB-em, Ann. Geophys., 28, 743-751, doi:10.5194/angeo-28-743-2010, 2010  

[Venus] Jarvinen R., E. Kallio, P. Janhunen, S. Barabash, T.L. Zhang, V. Pohjola and I. Sillanpää, Oxygen ion escape from Venus in a global hybrid simulation: Role of the ionospheric O+ population, Ann. Geophys, 27, 4333–4348, doi:10.5194/angeo-27-4333-2009, 2009  

[Mars] Kallio E., K. Liu, R. Jarvinen, V. Pohjola and P. Janhunen, Oxygen ion escape at Mars in a hybrid model: high energy and low energy ions, Icarus, 206 (1), 152-163, doi:10.1016/j.icarus.2009.05.015, 2010  

[Mars] Brain D., S. Barabash, A. Boesswetter, S. Bougher, S. Brecht, G. Chanteur, D. Crider, E. Dubinin, X. Fang, M. Fraenz, J. Halekas, E. Harnett, M. Holmstrom, E. Kallio, H. Lammer, S. Ledvina, M. Liemohn, K. Liu, J. Luhmann, Y. Ma, R. Modolo, U. Motschmann, H. Nilsson, H. Shinagawa and N. Terada, A Comparison of Global Models for the Solar Wind Interaction with Mars, Icarus, 206 (1), 139-151, doi:10.1016/j.icarus.2009.06.030, 2010  

[Venus] Liu K., E. Kallio, R. Jarvinen, H. Lammer, H.I.M. Lichtenegger, Yu. N. Kulikov, N. Terada, T.L. Zhang and P. Janhunen, Hybrid simulations of the O+ ion escape from Venus: Influence of the solar wind density and the IMF x component, Adv. Space Res., 43 (9), 1436-1441, doi:10.1016/j.asr.2009.01.005, 2009  

[Ceres] Kallio E., P. Wurz, R. Killen, S. McKenna-Lawlor, A. Milillo, A. Mura, S. Massetti, S. Orsini, H. Lammer, P. Janhunen and W-H. Ip, On the impact of multiply charged heavy solar wind ions on the surface of Mercury, the Moon and Ceres, Planet. Space Sci., 56 (11), 1506-1516, doi:10.1016/j.pss.2008.07.018, 2008  

[Mars] Kallio E., A. Fedorov, E. Budnik, S. Barabash, R. Jarvinen, and P. Janhunen, On the properties of O+ and O2+ ions in a hybrid model and in Mars Express IMA/ASPERA-3 data: A case study, Planet. Space Sci., 56, 1204–1213, doi:10.1016/j.pss.2008.03.007, 2008  

[Titan] Kallio E., I. Sillanpää, R. Jarvinen, P. Janhunen, M. Dougherty, C. Bertucci and F. Neubauer, Morphology of the magnetic field near Titan: Hybrid model study of the Cassini T9 flyby, Geophys. Res. Lett., 34, L24S09, doi:10.1029/2007GL030827, 2007  

[Venus] Jarvinen R., E. Kallio, I. Sillanpää and P. Janhunen, Hybrid Modelling the Pioneer Venus Orbiter Magnetic Field Observations, Adv. Space Res., 41 (9), 1361-1374, doi:10.1016/j.asr.2007.10.003, 2008  

[Titan] Sillanpää I., E. Kallio, R. Jarvinen and P. Janhunen, Oxygen Ions at Titan's Exobase in a Voyager 1 Type 1 Interaction from a Hybrid Simulation, J. Geophys. Res., 112, A12205, doi:10.1029/2007JA012348, 2007  

[Mars] Kallio E., S. Barabash, P. Janhunen and R. Jarvinen, Magnetized Mars: Transformation of Earth-like magnetosphere to Venus-like induced magnetosphere, Planet. Space Sci., 56 (6), 823-827, doi:10.1016/j.pss.2007.12.005, 2008  

[Venus] Kallio E., T.L. Zhang, S. Barabash, R. Jarvinen, I. Sillanpää, P. Janhunen, A. Fedorov et al., The Venusian induced magnetosphere: A case study of plasma and magnetic field measurements on the Venus Express mission, Planet. Space Sci. 56 (6), 796-801, doi:10.1016/j.pss.2007.09.011, 2008  

[Mars] Frilund H., E. Kallio, M. Yamauchi, A. Fedorov, P. Janhunen, R. Lundin, J.-A Sauvaud and S. Barabash, The Magnetic Field Near Mars: A Comparison Between A Hybrid Model, Mars Global Surveyor and Mars Express Observations, Planet. Space Sci., 56 (6), 828-831, doi:10.1016/j.pss.2007.12.003, 2008  

[Mars] Frahm R.A., E. Kallio, F. Yoshifumi, A. Fedorov and P. Janhunen, Variations of the magnetic field near Mars caused by magnetic crustal anomalies, Planet. Space Sci., 56 (6), 856-860, doi:10.1016/j.pss.2007.12.018, 2008  

[Mars] Kallio E., R.A. Frahm, Y. Futaana, A. Fedorov and P. Janhunen, Morphology of the magnetic field near Mars and the role of the magnetic crustal anomalies: Dayside region, Planet. Space Sci., 56 (6), 852-855, doi:10.1016/j.pss.2007.12.002, 2008  

[Mars] Gunell H., E. Kallio, R. Jarvinen, P. Janhunen, M. Holmström and K. Dennerl, Simulations of solar wind charge exchange X-ray emission at Venus, Geophys. Res. Lett, 34, L03107, doi:10.1029/2006GL028602, 2007  

[Mars] Kallio E, A. Fedorov, S. Barabash, P. Janhunen, H. Koskinen, W. Schmidt, R. Lundin, H. Gunell, M. Holmström, Y. Futaana, M. Yamauchi, A. Grigoriev, J.D. Winningham, R. Frahm and J.R. Sharber, Energisation of O+ and O+ 2 Ions at Mars: An Analysis of a 3-D Quasi-Neutral Hybrid Model Simulation, Space Sci. Rev., 126 (1-4), doi:10.1007/s11214-006-9120-z, 2006  

[Venus] Kallio E., R. Jarvinen and P. Janhunen, Venus-Solar Wind Interaction: Asymmetries and the Escape of O+ Ions, Planet. Space Sci., 54 (13-14), 1472-1481, doi:10.1016/j.pss.2006.04.030, 2006  

[Mars] Kallio et al., Ion escape at Mars: Comparison of a 3-D hybrid simulation with Mars Express IMA/ASPERA-3 measurements, Icarus, 182 (2), 350-359, doi:10.1016/j.icarus.2005.09.018, 2006  

[Titan] Sillanpää I., E. Kallio, P. Janhunen, W. Schmidt, A.-M. Harri, T. Mäkinen, K. Mursula, J. Vilppola and P. Tanskanen, Hybrid simulation study of ion escape at Titan for different orbital positions, Adv. Space Space Res., 38 (4), 799-805, doi:10.1016/j.asr.2006.01.005, 2006  

[Moon] Kallio E., Formation of the lunar wake in quasi-neutral hybrid model, Geophys. Res. Letters, 32, L06107, doi:10.1029/2004GL021989, 2005  

[Mars] Gunell H., M. Holmström, E. Kallio, P. Janhunen and K. Dennerl, Simulations of X-rays from solar wind charge exchange at Mars: Parameter dependence, Adv. Space Res., 36 (11), 2057-2065, doi:10.1016/j.asr.2005.06.007, 2005  

[Mars] Gunell H., M. Holmström, E. Kallio, P. Janhunen and K. Dennerl, X-rays from Solar Wind Charge Exchange at Mars: A Comparison of Simulations and Observations, Geophys. Res. Letters, 31 (22), L22801, doi:10.1029/2004GL020953, 2004  

[Mars] Gunell H., M. Holmström, S. Barabash, E. Kallio, P. Janhunen, A. F. Nagy and Y. Ma, Planetary ENA imaging: Effects of different interaction models for Mars, Planet. Space Sci., 54 (2), 117-131, doi:10.1016/j.pss.2005.04.002, 2005  
 
[Titan] Kallio E., I. Sillanpää and P. Janhunen, Titan in subsonic and supersonic flow, Geophys. Res. Letters, 31, L15703, doi:10.1029/2004GL020344, 2004  

[Mercury] Janhunen P. and E. Kallio, Surface conductivity of Mercury provides current closure and may affect magnetospheric symmmetry, Ann. Geophys., 22, 1829-1837, doi:10.5194/angeo-22-1829-2004, 2004  

[Mercury] Kallio E. and P. Janhunen, Solar wind and magnetospheric ion impact on Mercury's surface, Geophys. Res. Letters., 30 (17), 1877, doi:10.1029/2003GL017842, 2003  

[Mercury] Kallio E. and P. Janhunen, The response of the Hermean magnetosphere to the interplanetary magnetic field, Adv. Space Res., 33, 2176-2181, doi:10.1016/S0273-1177(03)00447-2, 2004  

[Mercury] Kallio E. and P. Janhunen, Modelling the Solar Wind Interaction With Mercury by a Quasineutral Hybrid Model, Ann. Geophys., 21 (11), 2133-2145, doi:10.5194/angeo-21-2133-2003, 2003  

[Mars] Kallio E. and P. Janhunen, Ion escape from Mars in a quasineutral hybrid model, J. Geophys. Res., 107, A3, doi:10.1029/2001JA000090, 2002  

[Mars] Kallio E. and P. Janhunen, Atmospheric effects of proton precipitation in the Martian atmosphere and its connection to the Mars-solar wind interaction, J. Geophys. Res., 106, 5617-5634, doi:10.1029/2000JA000239, 2001  

<h3 id="2.6">2.6 References of the LATMOS Hybrid Model</h3>

List of references for the LATMOS hybrid model in chronological order:  

[Mars] Lillis R.J., D. A. Brain, S. W. Bougher, F. Leblanc, J. G. Luhmann, R. Modolo, J. Fox, et al., Characterizing atmospheric escape from Mars today and through time, with MAVEN, Space Science Review, to be submitted, (2013)  

[Mars] Brain D., S. Barabash, S.W. Bougher, F. Duru, B. Jakosky and R. Modolo, Solar Wind interaction and atmospheric escape, Chapter 15, The Mars Atmosphere,  revised, (2013)  

[Titan] Wahlund JE, R Modolo, C Bertucci, A Coates, Titan's Magnetospheric and Plasma Environment, Chapter 13, in Titan: Surface, Atmosphere and Magnetosphere, Ingo Muller-Woddarg, Caitlin A. Griffith, Emmanuel Lellouch, Thomas E. Cravens (Ed.), Cambridge University Press, in press, (2013)  

[Mars] Modolo, R., G. M. Chanteur, and E. Dubinin, Dynamic Martian magnetosphere: Transient twist induced by a rotation of the IMF, Geophys. Res. Lett., doi:10.1029/2011GL049895, (2012)  

[Mercury] Richer E,Modolo R, Chanteur GM, Hess S and Leblanc F, A Global Hybrid Model for Mercury's Interaction With the Solar Wind: Case Study of the Dipole Representation, J. Geophys. Res., doi:10.1029/2012JA017898, (2012)  

[Mars] Koutroumpa D., R. Modolo, G. Chanteur, J.-Y. Chaufray, V. Kharchenko, R. Lallement, Solar wind charge exchange X-ray emission from Mars. Model and data comparison, Astron. & Astrophys., doi: 10.1051/0004- 6361/201219720, (2012)  

[Mars] Richer E., G. Chanteur, R. Modolo, E. Dubinin, Reflection of Solar Wind Protons on the Martian Bow Shock: Investigations by Means of 3-Dimensional Simulations, Geophys. Res. Lett., doi:10.1029/2012GL052858, (2012)  

[Mars] Cipriani F., O. Witasse, F. Leblanc, R. Modolo, R.E. Johnson, A model of interaction of Phobos' surface with the Martian environment, Icarus, 212(2), 2011, doi:10.1016/j.icarus.2011.01.036, (2011)  

[Mars, Venus, Titan] Kallio Esa, Jean-Yves Chaufray, Ronan Modolo, Darci Snowden and Robert Winglee, Modeling of Venus, Mars, and Titan, Space Science Reviews, doi: 10.1007/s11214-011-9814-8, (2011)  

[Mars] Chanteur G.M. , E. Dubinin, R. Modolo and M. Fraenz, Capture of solar wind alpha-particles by the Martian atmosphere, Geophys. Res. Lett., 36, doi: 10.1029/2009GL040235, L23105, (2009)  

[Mars] Duru, D.A. Gurnett, D. D. Morgan, R. Modolo, A. F. Nagy, D. Najib, J. J. Plaut, G. Picardi, Electron Densities in the Upper Ionosphere of Mars from the Excitation of Electron Plasma Oscillations, J. Geophys. Res., doi:10.1029/2008JA013073, (2008)  

[Titan] Modolo R. and G.M. Chanteur, Global hybrid simulation of the kronian plasma interaction with the neutral environment of Titan, Journ. Geophys. Res., 113, A01317, doi:10.1029/2007JA012453, (2008)  

[Mars] Chaufray J.-Y., R. Modolo, F. Leblanc, G.M. Chanteur, R.E. Johnson, J.G. Luhmann, Mars Solar Wind interaction : formation of the Martian corona and atmospheric loss to space, J. Geophys., Vol. 112, E09009, doi:10.1029/2007JE002915, (2007)  

[Titan] Modolo R., G. Chanteur, J.E. Wahlund, P. Canu, W.S. Kurth, D. Gurnett and C. Bertucci, Plasma environment in the wake of Titan from hybrid simulations - a case study, Geophys. Res. Let., Vol. 34, L24S07, doi:10.1029/2007GL03489, (2007)  

[Mars] Dubinin E., G. Chanteur, M. Fraenz, R. Modolo, J. Woch, E. Roussos, S. Barabash and R. Lundin, Asymmetry of Plasma fluxes at Mars. Aspera-3 observations and hybrid simulations, Planet. Space Sci., doi:10.1016/j.pss.2007.12.006, (2007)  

[Mars] Modolo R., G.M. Chanteur, E. Dubinin and A.P. Matthews, Simulated Solar Wind plasma interaction with the Martian neutral environment: influence of the solar EUV flux on the Bow Shock and the Magnetic Pile-up Boundary, Ann. Geophys., 24, p. 3403-3410, doi:10.5194/angeo-24-3403-2006, (2006)  

[Mars]  Modolo R., G.M. Chanteur, E. Dubinin and A.P. Matthews, Influence of the solar EUV flux on the Martian plasma environment, Ann. Geophys., 23, p. 433-444, doi:10.5194/angeo-23-433-2005, (2005)  

[Mars,Titan] R. Modolo, Modélisation de l’interaction du vent solaire, ou du plasma kronien, avec les environnements neutres de Mars et Titan, PhD Thesis, Paris (2004).  



<h2 id="3">3. Model Demonstrators</h2>

In this section, the modus operandi of each IMPEx data-model interface, HWA and LatHyS, is presented with illustrations.  

- Link to the Hybrid Web Archive (HWA): http://hwa.fmi.fi/  
- Link to the LatHyS Main Page: http://impex.latmos.ipsl.fr/  

<h3 id="3.1">3.1 Hybrid Web Archive User Guide</h3>

The Hybrid Web Archive is an interactive web archive of space plasma simulations developed by the Finnish Meteorological Institute (FMI). HWA is designed to provide easy access to global planetary and magnetospheric space plasma simulations for non-simulation experts.  


The HWA Graphical User Interface (GUI) is available at http://hwa.fmi.fi/beta/. This guide considers the HWA Beta version, which is under development in the IMPEx EU/FP7 project.  


A full description of the HWA interface, its access, and how it can be used, is presented in the subsections below.  




**3.1.1. Access and models**  


The HWA GUI interface is available at http://hwa.fmi.fi/ and the front page includes a link to the latest IMPEx development version called HWA Beta. The direct link to the HWA Beta is http://hwa.fmi.fi/beta/  


A user account can be requested on the front page via the ”Request a user account” link. Anyone wishing to test HWA can sign in via the ”Sign in as demo user” button on the front  page. Demo user mode provides most functionalities of the GUI but does not allow uploading user point files. Furthermore, run selection is limited in demo user mode only for few Venus and Mars hybrid simulations and magnetospheric MHD simulations.  


At the moment HWA hosts global HYB hybrid simulations of planetary plasma interactions and global GUMICS magnetosphere-ionospheric coupling MHD simulations.  


The HYB model platform includes several simulation objects including unmagnetized and weakly magnetized celestial objects.  


The description of the HYB model is available at http://hwa.fmi.fi/hyb/ and the description of the GUMICS model is available at http://gumics.fmi.fi/ .  


The HYB (hybrid simulations) or GUMICS (MHD simulations) archive is selected on top of the main page:

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/15_3_1_1.png" width="500" alt="15">

**3.1.2 HWA Main page**


The HWA main page is displayed after user login and it includes all the functionalities to select a simulation run and to create plots.


HWA/HYB main page


The HYB main page provides access to hybrid simulations archived in HWA:

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/16_3_1_2.png" width="500" alt="16">  

**HWA/GUMICS main page**  

The GUMICS main page provides access to MHD simulations archived in HWA:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/17_3_1_3.png" width="500" alt="17">  

**3.1.3. Simulation runs and data files**  

Archiving in HWA is based on simulation runs. Only one run can be analyzed at a time. A simulation run consists of input parameters and outputs. Input parameters define a simulation run. A simulation code integrates the equations of motion in time and writes outputs at different times.  


In HWA outputs of a simulation run are organized in Data Files. Each data file is written at a certain time and includes certain output parameters. Only one data file can be analyzed at a time.  

**3.1.4. Selecting a run and a data file (HYB archive)**  

To start analyzing a HYB simulation run 1) select the object (e.g., Mars), 2) select a run and 3) select a data file in ”Simulation File”:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/18_3_1_3.png" width="500" alt="18">

”Simulation Info” displays information about the physical and numerical parameters of the selected simulation run:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/19_3_1_4.png" width="500" alt="19">


**3.1.5 Selecting a run and data file (GUMICS Earth archive)**  
To start analyzing a GUMICS simulation run, two methods are possible:  

**EITHER:**  

1. select the ”Synthetic stationary” run set in ”Earth runs” under ”Simulation File”:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/20_3_1_5.png" width="500" alt="20">

2. select a run based on its name or input parameters:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/21_3_1_6.png" width="500" alt="21">  

3. select a data file:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/22_3_1_7.png" width="500" alt="22">  

**OR:**  

1. select the ”Event based” run set in ”Earth runs” under ”Simulation File”:

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/23_3_1_8.png" width="500" alt="23">  

2. select the date and time and 
	
3. file  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/24_3_1_9.png" width="500" alt="24">

”Simulation Info” displays information about the selected GUMICS run:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/25_3_1_10.png" width="500" alt="25">  

**3.1.6. Plotting**  
  
Plotting of a data file is divided in two parts: ”Plot Options” and ”Data Options”. Plotted variable and limits are chosen in ”Plot Option”. Also the spatial length unit is set here (default: simulation planet radius) as well as the logarithmic or linear (default) scale. Linear interpolation may also be set here if it is available.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/26_3_1_11.png" width="500" alt="26">


The plot type is selected in ”Data Options”. ”Plane” plot is a plot with x=const (yz plane), y=const (xz plane) or z=const (xy plane) value. The limits of the planet (use ”Full range” for the whole simulation box), the const. coordinate value, as well as the number of grid refinements (how many levels of hierarchical grid refinements are shown) may be given here:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/27_3_1_12.png" width="500" alt="27">
  
”Line” plot is a one dimensional line. End points and the number of samples along the line can be given:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/28_3_1_13.png" width="500" alt="28">

Under ”Point file” a user given set of points can be used to interpolate output parameters from a selected data file:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/29_3_1_14.png" width="500" alt="29">

Point files can be managed under ”Manage and Upload  Point files” page (”Upload / Manage points files” link under ”Data Options” or ”Manage Point files” button on the left menu bar):  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/30_3_1_15.png" width="500" alt="30">

If there are ongoing requests to upload or delete point files, they are shown under ”Active Requests”. The point file managing is not an instantaneous operation but includes a short delay, which user may experience when uploading or deleting point files.  

After setting ”Plot Options” and ”Data Options” the plot can be created by pressing the ”Plot Data” button on the bottom of the main page. The plot opens in new page.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/31_3_1_16.png" width="500" alt="31">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/32_3_1_17.png" width="500" alt="32">

**3.1.7. Simulation data download**  
In addition to plane and line plotting the simulation output parameters can be also downloaded. Download is started by pressing the ”Go to Download Page” button in the plot page or the ”Download Data” button in the bottom of the main page. In the download page several output parameters can be requested:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/33_3_1_18.png" width="500" alt="33">

The format of the downloaded data file is gzipped ASCII. The first three columns are the coordinate (x y z) and the requested parameters on the following columns. The headers of the ASCII file includes information about the chosen simulation run and data file name.  


**3.1.8. Point files**  

Point files are used to interpolate simulation output in coordinate points defined by a user. A user can upload ASCII files including three columns (x, y, z) into his/her HWA profile. Coordinates should be in SI units (meters) in the point files.  

**3.1.9. Requesting a run**  

A request of a simulation run with specific input parameters can be sent from the ”Request a run” button on the left menu bar.  

<h3 id="3.2">3.2 LatHyS Interface User Guide</h3>

**3.2.1. Access and models**  

This part of the document is dedicated to the description of the LatHyS webpage and how to use the LatHyS catalog developed at LATMOS.  
 
The LATMOS-IMPEx home page is http://impex.latmos.ipsl.fr/ .  


Links to different web pages are detailed below.  

**3.2.2. LatHyS main page**  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/34_.png" width="500" alt="34">

*Figure 1: Screen shot of the LATMOS-IMPEx webpage*  

“Hybrid Model Documentation” page  
Basically it links to a PDF file in which the simulation model is described (http://impex.latmos.ipsl.fr/doc/Hybrid_model_documentation.pdf).  

“Data Model” web page  
This page provides information on the Data Model used (and developed) by the IMPEx team. It includes:  

A comprehensive description of the IMPEx Data Model. It is a PDF file which is the user’s guide of the data model.  
The complete documentation of the Data Model available either in pdf or html format.  
The current version of the schema of the data model.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/35_.png" width="500" alt="35">  

*Figure 2: Screen shot of the Data Model web page*  

“LatHyS catalog” web page  

The LatHyS catalog web page is an interactive tool which provides information of simulation results which are archived in the system. It allows browsing the LATMOS simulation resources and display several information, such as the data products available (3D cubes, 2D cut and 1D time series) for the selected simulation run, as well as the basic input description concerning the requested run.  

For all archived simulations, pre-computed products are available. It takes into the following simulation results:  

- IonComposition (information for Density, Speed and Temperature of ion species tracked in the simulation)  
- MagneticField (3 components of the Magnetic Field)  
- ElectricField (3 components of the Electric Field)  
- ThermalPlasma (electron density, Plasma bulk speed, Electron temperature)  


The “Run Information” is displayed when one simulation product is selected.  

Several functionalities are implemented:  

- The possibility to download the simulation file  
- The possibility to activate the SAMP (Simple Application Message Protocole) functionality. This functionality allows transferring a selected 2D or 1D product into Visualization tools like AMDA or TopCat (cf 1.3).  
- A “Send” Application which send the data file (VOTable) into Topcat.  
- The possibility to filter the simulation catalog in order to display simulation runs available for a specific set of input condition requested by the user. (inactive at this time)  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/Hybrid-Models-Demonstrators/img/36_.png" width="500" alt="36">

*Figure 3: Screen shot of the LatHyS web page and information related to each functionality*  

The web interface description will be generated in a tutorial form which will be placed on the LATMOS-IMPEx homepage. The tutorial will be based on information displayed in §1.2.  

**3.2.3. Example of usage**  
Two tutorial/demonstration videos have been released and are available at http://impex-fp7.oeaw.ac.at/videos.html.  
These videos have been presented at the European Planetary Science Congress annual meeting (EPSC 2013) (September 2013) in the Virtual Observatory session and are the result of a successful collaboration between the Europlanet infrastructure [http://www.europlanet-eu.org/] and IMPEx FP7 projects. The IMPEx team has provided the tools, the SMBDs and the scenarios of the videos while Europlanet has funded the video pile-up and manufacture.  

- Video: Interoperability of AMDA, LatHyS and Topcat [http://youtu.be/rOh4Me9xTqE] 
The first video concerns the demonstration of interoperability between AMDA, LatHyS and Topcat. It aims to show to the user how to use and visualize 2D (but also 1D) data starting from the LatHyS web-interface and using Topcat tool. It shows how to select a simulation run from LatHyS, select a data product and a numerical parameter, activate a SAMP connection and send the file to Topcat. Information concerning Mars-Express data available from AMDA are also sent to Topcat using the same protocol.  

- Video: AMDA, 3DView and Simulation Databases (SMDBs) [http://youtu.be/8AxJRPho334]  
This scenario aims to demonstrate the interoperability between data time series visualization on AMDA-NG, a simulation database (LatHyS) and their data-products, as well as a 3D visualization scene (3Dview). On a scientific approach, we imagine that a user has identified an interesting event. The user would like to have a better understanding of the different physical processes involved and restitute the observations in a 3D scene. The underlying processing could be addressed by using the simulation facilities available, complementary to in situ observations.  

Several other tutorials or video demonstrations are considered for the near future. They will focus on new web-services facilities implemented conjointly between the SMDBs and the visualization tools. Possible scenarios can be illustrated on a scientific basis and take benefit of the different functionality of time series and 3D scene visualization combined observations and high simulation data product such as field line tracing or ion spectra diagnostic along spacecraft trajectory.  

<h3 id="3.3">3.3 Methodological Recommendations for Educators</h3>

Showing how the IMPEx infrastructure, encompassing both LatHyS and HWA databases, can be presented to a general non-scientific audience is a challenging task.


Here we present tracks and ideas to fulfill this ambition in the form of questions and suggestions.  This is a work in progress and should be completed by the end of the project to give it full visibility and potency.


**3.3.1. Educational background topics and questions**  


First, we have to present a basic understanding of space plasma physics [what are the physical concepts?]:  

- What is the solar wind?
- What is a magnetosphere?
- What is an ionosphere?
- What are the differences between solar system planets/ moons?
- What type of instrumentation and satellite infrastructures do we use? Remote sensing, in-situ detectors, etc.  

Secondly, we have to present in a simple way the physical numerical model [*how do we solve these concepts?*]:  

- Definition: what is a simulation, what is a numerical model?  Role of discretisation, transforming a continuous problem to a discrete problem.  
- Why do we need it? 
- Are they caveats using it?
- What is Magnetohydrodynamics, what is a kinetic model?
- How long do we run it? On which type of computer do we run it (computer resources, etc.)?
- How long did it take us to develop it?

<h2 id="4">4. Useful Links</h2>

- [IMPEx Tools and System Requirements](http://impex-fp7.oeaw.ac.at/tools.html) 
- [HWA - Hybrid Web Archive](http://hwa.fmi.fi/login.php)
- [LatHyS - LATMOS Hybrid Simulation Database](http://impex.latmos.ipsl.fr) 
- [FMI - Finnish Meteorological Institute](http://en.ilmatieteenlaitos.fi)
- [LATMOS - Laboratoire Atmosphères](http://www.latmos.ipsl.fr/index.php/fr/)
- [IWF - Institut fuer Weltraumforschung](http://iwf.oeaw.ac.at)
- [IMPEx FP7 - Integrated Medium for Planetary Exploration](http://impex-fp7.oeaw.ac.at)  

<h2 id="References">References</h2>
Please refer this tutorial to original version on [this site](https://sites.google.com/site/impexfp7/home)









