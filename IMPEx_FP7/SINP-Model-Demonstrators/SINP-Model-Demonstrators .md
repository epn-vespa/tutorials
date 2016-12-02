#SINP Model Demonstrators

[Authors](#Authors)  
[Change Log](#log)  
[1. Introduction](#1)    
&nbsp;&nbsp;[1.1 The Solar Wind and Earth's Magnetosphere](#1.1)  
&nbsp;&nbsp;[1.2 Be Aware of the Space Weather!](#1.2)  
&nbsp;&nbsp;[1.3 Further Readings](#1.3)  
[2. Description of the SINP PMM‎](#2)
&nbsp;&nbsp;[2.1 User Pool and Requirements](#2.1)  
&nbsp;&nbsp;[2.2 The Physics of the SINP PMM](#2.2)  
&nbsp;&nbsp;[2.3 The Disturbed Magnetosphere](#2.3)  
&nbsp;&nbsp;[2.4 Accuracy of the Model and Comparison with Experimental Data](#2.4)  
&nbsp;&nbsp;[2.5 Further Readings](#2.5)  
[3. SINP PMM Model Demonstrators](#3)  
&nbsp;&nbsp;[3.1 The SINP PMM Interactive Website](#3.1)  
&nbsp;&nbsp;[3.2 The SINP PMM in AMDA](#3.2)  
[4. Useful Links](#4)  
[References](#References)  



<h2 id="Authors">Authors</h2>

To be updated...

<h2 id="log">Change Log</h2>

|Version|Name|Note|
|---|---|---|
|1|[Keyuan Yin](https://github.com/megadiesel705)|First converted from [this site](https://sites.google.com/site/impexfp7/home/sinp-model-demonstrators)|  

<h2 id="1">1. Introduction</h2>

<h3 id="1.1">1.1 The Solar Wind and Earth's Magnetosphere</h3>

It was in 1959 when a soviet space probe, namely Lunik II, for the first time measured a sample of the solar wind – a stream of charged particles from the upper atmosphere of the Sun. This detection supported Parker’s solar wind theory established just one year earlier in 1958. He predicted that there is an ionized particle flow directed radially out of the Sun with a speed of hundreds of kilometres per second. However, Parker was not the first person who pointed out the possibility of such an outflowing plasma, but he was the first calling it “solar wind”. This solar wind, he further suggested, would carry out the Sun’s magnetic field into interplanetary space, causing a spiral shape due to the Sun’s rotation. Nowadays this phenomenon is well known as “Parker spiral”.  

The speed, density and the magnetic fields associated with the solar wind have a remarkable effect on Earth’s protective magnetic field. The so called magnetosphere – the sphere of influence of the Earth’s magnetic field – undergoes expansion and compression, particularly due to changes in the solar wind dynamic pressure. The concept of the dependence of the Earth’s magnetopause location on the dynamic pressure of the solar wind was first proposed by Chapman and Ferraro already in 1931. Besides solar wind pressure the strength of the magnetic field is the second factor in determining the magnetopause and thus the size of the magnetosphere. For quiet solar wind conditions the magnetopause has a distance from Earth of about 65,000 km, or 10 Earth radii (RE). On the nightside however, the magnetosphere can reach several 100 RE, which is called “magnetotail” – the primary source of the well-known polar aurorae.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/1_.png" width="500" alt="1">  

*Figure 1: This is an artist’s illustration of the Earth’s magnetosphere. Its dayside gets compressed by the solar wind. Image Credits: NASA.*  

The Earth is not the only planet within our solar system, which has a protective magnetic field. But the dimensions of these planetary magnetospheres vary by a factor of several thousand, ranging from magnetopause distances of ~3,500 km at Mercury (i.e. ~1.4 RM) to nearly 5 million km at Jupiter (i.e. ~70 RJ). However, all of them have about the same shape, coinciding with a paraboloid of revolution. This is where the magnetosphere model of the Skobeltsyn Institute of Nuclear Physics derives its name from: SINP paraboloid model of a magnetosphere, or simply SINP PMM.  

The distance where the pressure of the solar wind balances the pressure of a planet’s magnetosphere can be determined by the equation  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/1_1.png" width="100" alt="1_1">  

where r is the distance to the planetary magnetopause, B0 is the magnetic field strength of a given planet, the physical constant μ0≈ 1.256637x10-6 is the vacuum permeability, ρ is the density of the solar wind, and v is the speed of the solar wind. ρv² is the solar wind ram pressure. Some important parameters for some planetary magnetospheres can be found in Table 1. This table already gives a more advanced glimpse of the physics and maths behind magnetospheric physics.  

In the case of the Earth, plenty of space missions were continuously monitoring the solar wind density and velocity within the last decades. On October 29, 2003, one of the strongest solar eruptions ever recorded within the space age took place. A so-called Coronal Mass Ejection (CME) hit Earth’s magnetosphere with a speed of roughly v ≈ 2000 km/s. During this event the magnetopause got compressed down to ~35,000 km, leading to severe disturbances within the magnetosphere. This illustrates the fundamental power behind the solar wind, as well as the need to be able to predict and calculate changes within the magnetospheric environment: “Space Weather” can nowadays severely harm our highly technologized world.  

<h3 id="1.2">1.2 Be Aware of the Space Weather!</h3>

Space Weather became an important issue already in the 19th century when the first electrical tools were invented, but even more so since the advent of the space age. As an example, the electrical utility community can lose millions of dollars by damages or downtimes in their equipment due to magnetic storm induction effects at Earth’s surface. During one of the strongest ever recorded magnetic storms in March 1989, the Quebec Hydroelectric Utility grid failed costing about 8.6 billion dollars. Other utility grids around the world were also adversely affected by this storm. Transcontinental oil and gas pipelines are susceptible to electromagnetic induction as well as due to Space Weather, causing corrosion and high-voltage hazards.  

But that’s not the end of the story: Communication or weather satellites, which are often in a geostationary orbit, can obtain severe damages or even complete break down due to Space Weather effects. During a magnetic storm the magnetopause, which normally acts as a deflecting shield against the solar wind, can be compressed even down to the orbits of these satellites, leaving them exposed to the full impact of the solar wind’s radiation. Sometimes the orientation of the satellites is determined by sensing the geomagnetic field. During an intense magnetic storm, when the magnetopause is compressed down to a satellite’s orbit, the magnetic field orientation is suddenly reversed causing the satellite to abruptly rotate, which can cause extended booms to snap off, leaving the satellite dysfunctional. The strong increase of energetic ions as well as relativistic electron fluxes in the inner magnetosphere during magnetic storms can also be responsible for damaged satellites and even for their complete dysfunction and losses. With sufficient warning through Space Weather forecasting, such damage can be minimized or eliminated. Hence magnetospheric models are extremely important, since they are able to do exactly that: The SINP PMM is for instance successfully used to predict Space Weather effects well in advance.  

*Table 1: Planetary magnetosphere parameters. Table taken from Alexeev et al., Magnetospheres of the Mercury, Earth, Jupiter, and Saturn.*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/1_Table_1.png" width="500" alt="Table_1">  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/1_Table_2.png" width="500" alt="Table_2">  

Noting that over the past century the degree of Solar activity has generally been increasing from one cycle to the next, with some exceptions, and noting that Earth’s dipole field strength has decreased by 50% in the past 2000 years, it is clear that the degree of penetration of cosmic radiation to lower altitudes is correspondingly increasing. This in turn heats the upper atmosphere, which eventually affects the lower atmosphere and subsequently the daily weather and storm patterns at Earth’s surface as well as posing human health hazards such as increased cancer risk due to increased radiation at the surface. The more energy penetrating into the Earth’s atmosphere, the more active atmospheric weather patterns tend to be and the more severe are the solar related health hazards likely to be.  

These facts, plus our increased use of the space environment, mean substantially increased hazards related to Space Weather over the next century. Knowledge through modelling of the magnetospheric environment and the resulting ability to predict its behaviour are therefore becoming critical from the points of view of space mission accomplishment, health, economics, and natural disaster mitigation. Space Weather is clearly a global phenomenon, and this is why it is desirable to have an internationally accepted magnetospheric model.  

<h3 id="1.3">1.3 Further Readings</h3>

This section provides links to introductory websites and articles for further reading on the topics of space weather and the magnetosphere. Specialized literature on the SINP PMM will be provided in Section  3.1.5:  

**Selection of websites:**  

http://spaceweather.com/: News and information about the Sun-Earth environment. 
This website provides information about the current space weather, as well as an extensive archive and further information on the topic.  

http://spaceweather.com/:   NOAA / NWS Space Weather Prediction Center
This website provides current space weather conditions as obtained by solar observatories, current solar and geomagnetic indices, as well as several models for a wide range of predictions in the field of space weather and the geomagnetic environment.  

http://soho.nascom.nasa.gov/: The official site of the Solar and Heliophysical Observatory SOHO. It provides a wide range of space weather related information.  

http://smdc.sinp.msu.ru/: Space Weather Monitoring Data Center of SINP
This website also includes the SINP PMM interactive website:  
http://smdc.sinp.msu.ru/index.py?nav=paraboloid/index  


http://www.phy6.org/earthmag/Cluster1.htm: A Teacher’s Introduction to the Earth’s Magnetosphere by David P. Stern, Emeritus, Goddard Space Flight Center.  

http://www-spof.gsfc.nasa.gov/Education/Intro.html: The Exploration of the Earth’s Magnetosphere. An educational website on space research on the Earth’s Environment – hosted by NASA and created by David P. Stern and Mauricio Peredo.  

**Selection of general articles:**  

Pulkkinen, T., Space Weather: Terrestrial Perspective, Living Reviews in Solar Physics, 2007.  

Schwenn, R., Space Weather: The Solar Perspective, Living Reviews in Solar Physics, 2007.  
Moldwin, M., An Introduction to Space Weather, Cambridge University Press, 2008.  

<h2 id="2">2. Description of the SINP PMM‎</h2>

<h3 id="2.1">2.1 User Pool and Requirements</h3>

As already partially pointed out in Section 1.2 there are important reasons to model the Earth’s magnetosphere adequately. The SINP PMM is not only useful for Space Weather forecasting, but there are plenty of topical fields, for which someone can make use of the model. Following is a list of space related topics for which the model may serve as a useful tool:  


- Space Weather forecasting  
- Human health and insurance issues  
- Radiation hazards determination  
- Estimation of spacecraft and electronic devices integrity  
- Pure and applied space physics environmental research  
- Satellite navigation  
- Aero and space industry  
- Fundamental sciences  
- Training of students in the fields of space research  


However, the ultimate objective of Space Weather research is the development of a quantitative forecasting via physically reasonable magnetospheric models. Hence, main requirements to the SINP PMM are:  


- The reliability of the model:  
A model of the magnetospheric currents magnetic fields must describe a regular part of the magnetosphere adequately. This includes the dependence on the parameters of the interplanetary medium reflecting magnetic field features such as the depression of the Earth’s magnetosphere on the dayside due to its interaction with the solar wind, as well as daily and seasonal variations of the magnetic field.  
It has to take into account the tilt angle between the geomagnetic dipole and the plane orthogonal to the Earth-Sun line.  
It also has to describe the dynamics of the magnetospheric large-scale current systems.  
The model has to take into account the dependence of the magnetic field of the magnetospheric current systems on the conditions in the Earth’s environment.  
It also has to be able to describe the variations of the magnetopause form and location, as well as the penetration of the interplanetary magnetic field into the magnetosphere (in dependence of the solar wind conditions).  


- The simplicity of the algorithm, allowing real-time calculations.  
- The model must satisfy well founded physical principals.  
- It has to work without restrictions imposed on the values of the parameters of the interplanetary medium. This enables the description of extremely disturbed magnetosphere conditions due to hazardous Space Weather conditions – a crucial point for adequate Space Weather forecasting.  

<h3 id="2.2">2.2 The Physics of the SINP PMM</h3>

Most of the magnetosphere models are static models, for which the input parameters are based on the averaging of spacecraft experimental data. This approach allows real-time calculations and satisfactorily describes the status of the magnetosphere during quiet solar wind conditions. However, their parameters cannot be changed accordingly to rapid changes in the magnetospheric environment. In contrast to that, the SINP PMM, which was first described by Alexeev et al. in 1996 (so-called A96 model), and adopted in 2000 (A2000), is a dynamic model, assuring that rapid changes and strong disturbances within the magnetosphere can be simulated adequately. Hence it is possible to represent the magnetic field dynamics especially during strong disturbances. An important advantage of the SINP PMM is that it can describe the magnetic field of each magnetospheric current system as a function of its own time-dependent input parameters. A functional dependence of the model input parameters on the empirical data obtained by satellites and ground-based observatories is determined by a set of sub-models.  

The influence of the solar wind on the magnetosphere is non-linear, especially when strong disturbances are occurring. Different current systems within the magnetosphere respond on this external driving-force non-synchronously and are not only depending on the current solar wind conditions but also on previous conditions (so to say the “prehistory” of the solar wind). Besides external conditions also internal parameters like the geomagnetic indices DSt and AL are forming the magnetospheric region, which reflect the non-linear character of the solar wind – magnetosphere coupling. Taking both into account – solar wind parameters jointly with geomagnetic indices – as input for the magnetospheric model allows the representation of the non-linear response of the magnetic field on solar wind driving, as well as of the afore mentioned “prehistoric” effects.  

The SINP PMM determines Earth’s magnetospheric magnetic field from each of its large scale current systems as an analytical solution of the Laplace equation inside of a fixed shaped magnetosphere: A paraboloid of revolution (see Figure 2), for which the condition Bn=0 is assumed at the magnetopause. Several magnetic fields generated by different current systems are contributing to the magnetospheric field vector Bm.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/2_F_2.png" width="500" alt="2">  

*Figure 2:A paraboloid of revolution. Figure taken from Wikipedia/author: Krishnavedala.*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/3_F_3.png" width="500" alt="3">  

*Figure 3: An illustration of the current systems as used in SINP PMM. Figure taken from Alexeev & Feldstein, 2001.*  

A schematic illustration of these different current systems can be seen in Figure 3. The magnetospheric field vector Bm can then be calculated by summarizing up all of these contributing fields:  


&nbsp;Bm=Bsd(ψ,R1)+Bt(ψ,R1,R2,Φ∞)+Br(ψ,bR)+Bsr(ψ,R1,bR)+Bfac(I∥)  

where  


- Bsd is the magnetic field of Chapman-Ferraro currents on the magnetopause screening the dipole field,  
- Bt is the geotail current system magnetic field,  
- Br is the ring current magnetic field,  
- Bsr is the magnetic field of the magnetopause currents screening the ring current,  
- Bfac is the field of Region 1 field-aligned currents.  

All of these magnetospheric field sources depend on different time-dependent input parameters, i.e.:


- the geomagnetic dipole tilt angle ψ,  
- the distance to the subsolar point of the magnetosphere R1,  
- the distance to the inner edge of the tail current sheet R2,  
- the tail lobe magnetic flux Φ∞,  
- the ring current magnetic field br at the Earth’s center, and  
- the total strength of Region 1 field-aligned currents I∥,  

These input parameters depend on empirical data from the solar wind, which can be obtained from upstream solar wind monitors like ACE or Wind, from auroral data, and from the geomagnetic indices AL and Dst, which can be computed from various geomagnetic observatories scattered around the Earth’s surface. Thus, the SINP PMM consists of three basic elements: empirical data, input parameters, and the model itself.  

For the calculation of the SINP PMM, 5 of the time-dependant input parameters have to be defined. As can be seen in more detail in e.g. Alexeev & Feldstein 2001, these are ψ, R1, R2, Φ∞,and br:  

- The geomagnetic dipole tilt angle ψ is a known function and the only input-parameter, which is explicitly time dependent and has a fixed structure:  
sinψ=-sinβcosα1+cosβsinα1cosφm  
where α1 = 11.43° is the angle between the Earth’s axis and the geodipole moment, β is the declination of the Sun, and  φm = UT15°-69.76°. UT is the Universal Time in hours.  

The calculation of the other 4 input parameters is dependent on the construction of different sub-models, which can be changed or even replaced by the user. This allows an individual and flexible usage, taking into account different physical features of the solar wind, depending on the specifics of the user, as well as on the availability of data. In the following 4, definitions of R1, R2, Φ∞, and br are described, as they can be used for the SINP PMM: 

- The distance to the subsolar point of the magnetosphere R1 is determined by the dynamic solar wind pressure PSW (nPa), i.e. ρSWvSW2, and the bZ-component of the interplanetary magnetic field, which can be written as (as described in Alexeev & Feldstein, 2001)  
R1=(PSW)-16.6RE{11.4+0.013bZ    for bZ>0, 11.4+0.140bZ    for bZ<0.  
where RE is the radius of the Earth.

- The geocentric distance to the earthward edge of the magnetospheric tail current sheet R2 follows the relationship  
R2=1/cos(^2)θφn  
where φn is the midnight colatitude of the equatorward boundary, which can be determined as  
φn=64.9°+(|Dst|[nT]31)°  

- The ring current magnetic field strength br can be represented as solution of the so-called Burton equation (see Burton et al., 1975), including symmetric as well as asymmetric parts of the ring current:  
dbrdt=F(E)-brτ  
This results from joint action of injection and decay processes. The injection function can be written as  
 F(E)={d(Ey-0.5)   for Ey>0.5 mV/m 0                        for Ey<0.5 mV/m  
where Ey is the dawn-dusk electric field in the solar wind, and d is the injection amplitude. The ring current decay time τ is determined as  
τ=2.37 e9.744.78+Ey  
in hours, as can be seen in O’Brien & McPherron, 2000.  

- The tail lobe magnetic flux Φ∞ is the key parameter for both the tail current system, as well as for the magnetosphere as a whole. It is calculated as a sum of two terms:  
Φ∞=Φ0(t)+Φs(t),  
where Φ0(t) is the quiet time value of the magnetic flux and Φs(t) is the magnetic flux value associated with the electric field enhancement in the solar wind.  
The characteristic time scale of the current system response to changes in the interplanetary medium is about one hour. This means that the magnetotail current system tends to realize a state corresponding to the dynamical pressure value of one hour before (remember: the “prehistory” of the solar wind). This corresponds to the quiet time value of the magnetic flux:  
Φ0(t)=400(PSW(t-1))1/6.6  
The dynamical contribution can be calculated as described in Alexeev et al. 2001:  
Φs(t)=bt(t)πR1222R1R2+1,  
where bt(t) is the magnetic field of the magnetotail current system near the inner edge of the current sheet. This value can be determined e.g. via using the AL index.  


During strong storms and high substorm activity a direct use of the AL index to calculate the contribution of the magnetotail current system is not quite correct. In this case only the electric field in the interplanetary medium can be the main measure of energy accumulation in the magnetotail:  

bt(t)=fvb(V,Bimf,t)fpb(PSW)fab(AL)  

The terms fab and fpb indicate the influence of substorm activity and solar wind dynamical pressure on the tail current. The most essential magnetic field dependence on the electric field in the solar wind is represented by fvb, which is determined by the following expression:  

fvb(V,Bimf,t)={0 V(t-1)300(bz(t-1)-|by(t-1)|fpb(PSW))   bZ≥0   bZ<0   

The current in the current sheet depends mainly on the term VbZ and one hour delay should be taken into account. This is the minimal time step used when studying magnetic storms and modeling the Dst variation. Furthermore an average duration of a substorm is also about one hour.  

Figure 4 represents the measured Dst-index (solid curve) and the magnetic field as given by the SINP PMM (dot-dot-dashed curve). There is a good agreement of the model calculations with the real Dst. In that case the root mean square deviation is about 10 nT.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/4_F_4.png" width="500" alt="4">  

*Figure 4: Modelled magnetic field (dot-dot-dashed curve) vs Dst (solid curve). Furthermore one can see the contributions of magnetopause currents (dashed cuve), ring current ( dotted curve), and tail current (dot-dashed curve). Figure taken from Alexeev et al., 2003.*  

Figure 5 represents the magnetospheric field lines as calculated by SINP PMM.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/5_F_5.png" width="300" alt="5">  

*Figure 5*  

<h3 id="2.3">2.3 The Disturbed Magnetosphere</h3>

As already described within Section 2.2, the magnetosphere results from internal magnetic fields as well as from large-scale (external) magnetospheric current systems. The latter are under continuous external driving  by the solar wind and the interplanetary magnetic field. They are also responsible for the magnetospheric dynamics during quiet and disturbed conditions. Each of these current systems develops independently from each other at different time scales and their joint asynchronous development produces the complicated dynamics of the total magnetic field of the magnetosphere.  

The SINP PMM can reproduce the variations of every current system separately. This allows understanding the relative dynamics of the magnetospheric current system during storm-time periods. The submodels as described in Section  2.2 are usually used to determine the model parameter variations, depending on the solar wind conditions. Figure 6 shows the magnetospheric magnetic field structure at different phases of a magnetic storm of January 9-11, 1997 (see also Section  2.4.2). One can see strong changes in the magnetospheric structure at the main phase of the storm.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/6_F_6.png" width="500" alt="6">  

*Figure 6*  

For a correct reflection of the internal magnetospheric dynamics, it is assumed that the injection amplitude d varies from storm to storm. For different values of d the equation for the ring current magnetic field strength br has to be solved for every hour during the studied event. These values – which are dependent on d – are together with all other model parameters used to calculate the magnetic field variations, as well as Dst and its sources. This can be used to calculate the minimum roots-mean-square deviation (RMSD) between observed Dst and the modelled Dst (see also Section  3.2.3 ):  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/6_Formula.png" width="100" alt="6_formula">  

where n is the number of  points during the magnetic storm for which the magnetic field has been calculated by the SINP PMM.  

Figure 7 shows solar wind conditions during the extreme magnetic storms on October-November 2003. One can see that very strong magnetospheric disturbances took place. Figure 8 displays magnetospheric parameters as calculated for these extreme magnetic storms. Figure 9 displays observed and calculated values of Dst, as well as contributions to Dst, originating from different magnetospheric current systems.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/7_F_7.png" width="500" alt="7">  

*Figure 7*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/8_F_8.png" width="500" alt="8">  

*Figure 8*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/9_F_9.png" width="500" alt="9">  

*Figure 9*  

<h3 id="2.4">2.4 Accuracy of the Model and Comparison with Experimental Data</h3>

**2.4.1. Comparison with the Large Magnetosphere Magnetic Field Data Base**

The Large Magnetospheric Magnetic Field Data Base is hosted by the National Space Science Data Center of NASA. It includes magnetospheric data of e.g. Explorer 33, 35 Heos 2, ISEE 1,2, and of several IMP spacecraft. Within the data base there are nearly 80,000 different records containing data between 4 and 60 Earth radii. Further information can be found on the website as well as in Fairfield et al., 1994.  

Figure 10 displays the distribution of discrepancies between observational data and calculations of the SINP PMM (left side). Furthermore a scatter plot for the inner magnetosphere is presented on the right side of the figure. The histogram on the left side show relative discrepancies, calculated via

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/10_Formula.png" width="100" alt="10_Formula">  

where B(sc) is the magnetic field as measured on board of different spacecraft, and B(mod) is the magnetic field as calculated by SINP PMM. 45181 measurement were compared with model simulations and resulted in a mean discrepancy of 3%.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/10_F_10.png" width="500" alt="10">  

*Figure 10: Magnetospheric field magnetic induction calculated by SINP PMM and compared with observational data of the Large Magnetospheric Magnetic Field Database. Left side: Distribution of discrepancies. Right side: Scaptter plot of the observed magnetic field module against simulated values. Figure taken from the Explanatory Report of the SINP PMM, Revision 8 (ISO Standard ISO/CD 22009).*  

Near Earth at distances about the geostationary orbit in the magnetosphere nightside the  disprecpancy to observational magnetic field data is on average 12.3 nT, and for the magnetosphere dayside 3.4 nT. For the nightside the magnetic field is slightly underestimated, whereas it is overestimated for the dayside. These discrepancies can be explained by the effects of field aligned currents which were not taken into account for these calculations. Since the SINP PMM can be modified individually by changing its submodels, such effects as mentioned above can be taken into account for further calculations: Changing of the parameters can lead to a better accordance with observational data sets.  

*Table 2: Comparison of the magnetic field calculated py SINP PMM (A99), Tsyganenko model (T96) and measured magnetic field values from the Large Magnetosphere Magnetic Field Data Base. The values are averaged by the levels of disturbances. Table taken from the Explanatory Report of the SINP PMM, Revision 8 (ISO Standard ISO/CD 22009).*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/10_Table.png" width="500" alt="10_Table">  

In Table 2 magnetic field calculations by the SINP PMM (version A99) are compared with calculations by the static magnetospheric Tsyganenko model (T96), as well as with observational data of the Large Magnetosphere Magnetic Field Data Base. Only for quiet conditions T96 gives better results than A99. For Kp – the index for magnetospheric disturbances – between 1- and 2- the results of T96 and A99 are comparable, but for disturbed conditions, i.e. Kp > 2 the SINP PMM gives the more accurate results.

**2.4.2. Case Study for January 9-12, 1997**  

On January 9-12, 1997 the Earth’s magnetosphere was interacting with a dense solar wind plasma cloud causing significant magnetic substorm activity.  The leading part of the cloud was accompanied by a southward directed interplanetary magnetic (IMF) field whereas the trailing part consisted of a northward directed IMF accompanied by a large density enhancement which strongly compressed the magnetosphere. The compression was so strong that several crossings with the geostationary orbit took place causing the crash of the geostationary satellite Telstar 401.  

The input parameters for the calculation were directly defined by the actual solar wind density and velocity, of the auroral AL index, as well as of the actual strength and direction of the IMF, as can be seen in Figure 11. The tilt angle ψ, the magnetic field flux through the magnetotail lobes Φ∞, the ring current magnetic field at the Earth’s center br, and the distances to the magnetopause subsolar point R1, as well as to the earthward edge of the magnetotail current sheet R2 were then calculated depending on the time dependend inputs, as can be seen in Figure 12.  

For this case study the ground magnetic field was analyzed via simulation based on the SINP PMM (A99), as can be seen in Figure 12. The magnetospheric magnetic field variation was therefore calculated at the geomagnetic equator at each hour and averaged over the whole equator. Figure 13a-c in the left panel are presenting the geomagnetic index Dst and its main sources as calculated by the SINP PMM, i.e.:  

a) the magnetic field of currents on the magnetopause;  
b) the ring current magnetic field at the Earth’s surface (solid curve), as well as the corresponding magnetic field due to currents induced inside the Earth (dashed curve);  
c) the tail current magnetic field (solid curve), as well as the corresponding magnetic field due to currents induced inside the Earth (dashed curve), and  
d) the geomagnetic index Dst (solid curve), as well as the total magnetic field BM (dashed curve)  

There is a good agreement in observed and calculated values for both the relatively quiet and disturbed periods. The caluclations of the SINP PMM results in a root mean square deviation (RMS) from Dst (δB) to the observations of ~8.7 nT.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/11_F_11.png" width="300" alt="11">  

*Figure 11: Empirical data used for the calculation of the model input parameters. a) Dst, b) AL, c) IMF BZ, d) velocity, and d) density. Figure taken from the Explanatory Report of the SINP PMM, Revision 8 (ISO Standard ISO/CD 22009).*  

As can be seen from the analysis of the magnetic storm, the magnetospheric dynamics depends on all magnetospheric magnetic field sources. The SINP PMM can therefore be successfully applied, especially during heavily disturbed periods, for which empirical models will often not receive reasonable results and hence are most probably not valid. The quality of a model, as well as its flexibility are defined by the possibility of reflecting the dynamics of all of the large-scale current systems. Empirical models often do not allow to determine the time dependence of each of these systems appropriately, whereas the submodels of the SINP PMM can do exactly that.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/12_F_12.png" width="300" alt="12">  

*Figure 12: The model input parameters: a) The tilt angle ψ, b) the magnetic field flux through the magnetotail lobes Φ∞, c) the ring current magnetic field at the Earth’s center br, and d) the distances to the magnetopause subsolar point R1, as well as to the earthward edge of the magnetotail current sheet R2. Figure taken from the Explanatory Report of the SINP PMM, Revision 8 (ISO Standard ISO/CD 22009).*  

To demonstrate the accuracy of the SINP PMM the calculations of the magnetospheric field were further compared with data of the geostationary satellites GOES8 and 9, which is displayed in Figure 14. To verify the calculations of the magnetotail current contribution to Dst the auroral oval was calculated with the use of the obtained model parameters and compared with radii obtained by the satellites DMSP F10-F13 and from the Polar Ultraviolet Imager, which can be seen in Figure 15.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/13_F_13.png" width="300" alt="13">  

*Figure 13: Dst and its main sources as calculated by the SINP PMM (A99. Figure taken from the Explanatory Report of the SINP PMM, Revision 8 (ISO Standard ISO/CD 22009).*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/14_F_14.png" width="300" alt="14">  

*Figure 14: Comparison of the simulation of the magnetic field by SINP PMM with observational data along the orbit of a) GOES9, and b) GOES8. Figure taken from the Explanatory Report of the SINP PMM, Revision 8 (ISO Standard ISO/CD 22009).*  

<img scr="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/15_F_15.png" width="300" alt="15">  

*Figure 15: a) Comparison of the polar cap radius as derived from the SINP PMM with observational data obtained by DMSP F10-F13 ( triangles) and from the Polar Ultraviolet Imager (circles). b) Comparison of the midnight latitude of the equatorward boundary of the polar oval as derived from the SINP PMM with calculations derived by observational data of DMSP F10-F13 (triangles). Figure taken from the Explanatory Report of the SINP PMM, Revision 8 (ISO Standard ISO/CD 22009).*  

A more detailed view on the comparison between simulation and observation data of this event, as well as of other events and with the Large Magnetospheric Magnetic Field Data Base can be looked up at the Explanatory Report of the SINP PMM, Revision 8 (ISO Standard ISO/CD 22009).  

<h3 id="2.5">2.5 Further Readings</h3>

This section provides further literature on references to the SINP PMM. Furthermore it provides some useful links on the description of the model, as well as on its source code:  

Documentation of the model (including a description on how to manipulate the model source code, as well as on the mathematical background of the model: http://smdc.sinp.msu.ru/index.py?nav=paraboloid/index  

The source code of the model: http://smdc.sinp.msu.ru/content/paraboloid/parabmod.for  

References to the model (in chronological order, starting with the newest):  

Belenkaya, E.S., Alexeev, I.I., Slavin, J.A., Blokhina, M.S., Influence of the solar wind magnetic field on the Earth and Mercury matgnetospheres in the paraboloid model, Planetary and Space Sciences, Vol. 75, 46-55, 2014.  

Alexeev, I.I., Belenkaya, E.S., Grigoryan, M.S., Magnetospheres of the Mercury, Earth, Jupiter, and Saturn, Multi-scale Dynamical Processes in Space and Astrophysical Plasmas, Astrophysics and Space Science Proceedings, Vol. 33, Springer-Verlag Berlin, Heidelberg, p.209, 2012.  

Kalegaev, V.V., and Makarenkov, E.V., Relative importance of ring and tail currents to Dst under extremely disturbed conditions, Journ. of Atm. and Sol.-Terr. Phys., Vol. 70, 519-525, 2008.  

Kalegaev, V.V., Makarenkov, E.V., Dynamics of magnetospheric current systems during magnetic storms of different intensity, Geomagnetism and Aeronomy, Vol. 46, Issue 5, 570-579, 2006.  


Kalegaev, V.V., Alexeev, I.I., Makarenkov, E.V., Ganvushkina, N.Y., Modeling the Dst variation during magnetic storms, Geomagnetism and Aeronomy, Vol. 46, Issue 5, 563-569, 2006.  


Bobrovnikov, S.Y., Alexeev, I.I., Belenkaya, E.S., Kalegaaev, V.V., Clauer, C.-R., Feldstain, Y.I., Case study of September 24-26, 1998 magnetic storm, Advances in Space Res., Vol. 36, Issue 12, 2428-2433, 2005.  

Kalegaev, V.V., Gnushkina, N.Y., Pulkinnen, T.I., Kubyshkina, M.V., Singer, H.J., Russell, C.T., Relation between the ring current and the tail current during magnetic storms, Ann. Geophys., Vol. 26, 523-533, 2005.  


Alexeev, I.I., Belenkaya, E.S., Bobrovnikov, S.Y., Kalegaev, V.V., Modelling of the electromagnetic field in the interplanetary space and in the Earth's magnetosphere, Space Science Reviews, Vol. 107, Issue 1, 7-26, 2003.  

Feldstein, Y.I., Gromova, L.I., Alexeev, I.I., Kalegaev, V.V., The Fields of Magnetospheric Current Systems on the Earth's Surface in an Interval of the Magnetic Storm Studied under the International Program on Solar-Terrestrial Physics, Cosmic Research, Vol. 41, Issue 4, 359-370, 2003.  


Feldstein, Y.I., Dremukhina, L.A., Levitin, A.E., Mall, U., Alexeev, I.I., Kalegaev, V.V., Energetics of the magnetosphere during the magnetic storm, J. of Atmosperic and Solar-Terrestrial Physics, Vol. 65, Issue 4, 429-446, 2003.  

Alexeev, I.I., Kalegaev, V.V., Belenkaya, E.S., Bobrovnikov, S.Y., Feldstein, Y.I., Gromova, L.I., Dynamic model of the magnetosphere: Case study for January 9-12, 1997, J. Geophys. Res., Vol. 106, Issue A11, 25683-25694, 2001.  

Kalegaev, V.V., Alexeev, I.I.,Feldstein, Y.I., The geotail and ring current dynamics under disturbed conditions, J. of Atmospheric and Solar-Terrestrial Physics, Vol. 63, Issue 5, 473-479, 2001.  


Alexeev, I.I., Feldstein, Y.I., Modeling of geomagnetic field during magnetic storms and comparison with observations, J. of Atmospheric and Solar-Terrestrial Physics, Vol. 63, Issue 5, 431-440, 2001.  


Alexeev, I.I., Belenkaya, E.S., Clauer, C.R., A model of region 1 field-aligned currents dependent on ionospheric conductivity and solar wind parameters, J. Geophys. Res., Vol. 105, IssueA9, 2119-21128, 2000.  


Kalegaev, V.V. & Dmitriev, A., Magnetosphere Dynamics Under Disturbed Conditions on 23-27 November, 1986, Advances in Space Res., Vol. 26, Issue 1, 117-120, 2000.  


Dremukhina, L.A., Feldstein, Y.I., Alexeev, I.I., Kalegaev, V.V., Greenspan, M.E., Structure of the magnetospheric magnetic field during magnetic storms, J. Geophys. Res., Vol. 104, Issue A12, 28351-28360, 1999.  

Alexeev, I.I., Sibeck, D.G., Bobrovnikov, S.Y., Concerning the location of magnetopause merging as a function of the magnetopause current strength, J. Geophys. Res., Vol. 103, Issue A4, 6675-6684, 1998.  

Alexeev, I.I., Belenkaya, E.S., Kalegaev, V.V., Feldstein, Y.I., Grafe, A., Magnetic storms and magnetotail currents, J. Geophys. Res., Vol. 101, Issue A4, 7737-7748, 1996.  

<h2 id="3">3. SINP PMM Model Demonstrators</h2>

<h3 id="3.1">3.1 The SINP PMM Interactive Website</h3>

The interactive website of the SINP PMM provides several different possibilities for the user to calculate the magnetic field environment of the Earth. One can use self-defined parameters, but also actual interplanetary conditions, measured by different spacecraft at any given time back to the year 1966. Furthermore the Simulation Database provides several pre-calculated 3D-cubes of significant magnetic storm events within past years. But even more so: Besides Earth it also provides the possibility to interactively calculate the magnetospheres of Mercury and Saturn. However, this introduction into the SINP PMM interactive website will be focused on the Interactive Earth part.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/16_F_16.png" width="500" alt="16">  

*Figure 16: The SINP PMM interactive website's mainpage.*  

Accessible at http://smdc.sinp.msu.ru/index.py?nav=paraboloid/index the website provides a short overview of the mathematical background on its starting page, as can be seen in Figure 16. A more detailed view on the background can be obtained by downloading the SINP PMM description as pdf directly from the website’s Documentation page. To use the interactive tools at the website there is no registration needed.  

By clicking on Interactive Earth, one gets directly redirected to an interactive version of the SINP PMM, providing several possibilities to calculate the magnetic field environment of the Earth:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/17_F_17.png" width="500" alt="17">  

*Figure 17: Interactive Earth - starting page.*  

As can be seen in Figure 17 there are two different ways to deliver the external input parameters needed for the calculation of the 3D-cube of the magnetic field around Earth. These are  

- an automatic determination of all input parameters via the use of an extensive database, or
- a manual determination of all input parameters.  

Both possibilities will be described in more detail below.


**3.1.1. Using the SINP PMM Database**  

The database at the SINP PMM website provides data for input parameters by several different spacecraft ranging back to 1966.  The time step of the model is one hour, i.e. one can choose year, month, day, and hour, for which the database should retrieve the actual solar wind parameters as obtained by spacecraft measurement at the respective time frame.  

By clicking in the field “Date and time”, a little window pops up displaying the days of month, as well as fields for choosing the respective month and respective year. Please be aware that for earlier years one has to choose the year category several times. As an example one may choose January 11, 1997: When the drop down menu for the year is opened, the years are only ranging back until 2004 (see Figure 18), by clicking on 2004, the list of years is extended down to 1994, and hence it is now possible to choose 1997, as can be seen in Figure 19. Afterwards one can easily choose the respective month and day, i.e. January, 11.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/18_F_18.png" width="500" alt="18">   

*Figure 18*

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/19_F_19.png" width="500" alt="19">  

*Figure 19*  

To use the database of spacecraft measurements the field To be determined from database by date has to be chosen. If done so, no solar wind parameters can be filled out individually in the interactive form.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/20_F_20.png" width="500" alt="20">  

*Figure 20*  

There are three possibilities, on which data should be retrieved. As can be seen on the right side in Fehler! Verweisquelle konnte nicht gefunden werden., these possibilities are  

a) Magnetic field. When choosing this option a further interactive input form appears containing GSM-coordinates of the point where the calculations should be performed:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/21_F_21.png" width="500" alt="21">  

*Figure 21*  

The coordinates can be changed individually. By clicking on Retrieve one gets all output parameters as calculated by the SINP PMM for the respective coordinate:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/22_F_22.png" width="500" alt="22">  
*Figure 22*  

b)  Distribution along Sun-Earth line. By choosing this option and by afterwards clicking on Retrieve one gets a plot displaying the magnetic field as distributed along the Sun-Earth line:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/23_F_23.png" width="500" alt="23">  

*Figure 23*  

Earth magnetosphere (xz projection). By choosing this option and by afterwards clicking on Retrieve one gets a plot displaying the magnetosphere along the xz-plane:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/24_F_24.png" width="500" alt="24">  

*Figure 24*  

The same routines can be performed with any date between 1996 and the present date.  

**3.1.2. Using Individual Parameters**  

Besides the extensive database of spacecraft measurements one can also use individual solar wind parameters. By choosing the option To be determined manually the interactive input form can be filled out. As Figure 25 shows, the predefined values within the input form are the latest observations made by spacecraft. This screenshot was made on May 26, 2014 a few minutes after 3pm UT. As one can see, the predefined values are dating back to the latest possible date, i.e. May 26, 2014, 3pm UT. However, all of these parameters can now be manipulated individually.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/25_F_25.png" width="500" alt="25">  

*Figure 25*  

As an example one may simulate the impact of a dense and fast plasma cloud within the solar wind by changing density, speed, as well the BZ-component of the IMF (please note that these values are arbitrarily chosen). One can now compare the values obtained by the actual solar wind conditions on May 26, 2014, 13pm UT with the arbitrary ones (see Figure 26 for the actual values and Figure 27 for the arbitrary values).   

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/26_F_26.png" width="500" alt="26">  
*Figure 26*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/27_F_27.png" width="500" alt="27">  

*Figure 27*  

As already explained in Section 3.1.1 one can also choose between a) Magnetic field, b) Distribution along Sun-Earth line, and c) Earth magnetosphere (xz projection) for any individual input parameters.  

For Earth magnetosphere (xz projection) one can easily compare the change in the shape of the magnetosphere, when changing the initial values to arbitrary values as described above (see Figure 28).  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/28_F_28.png" width="500" alt="28">  

*Figure 28: Left side: Initial input parameters from May 26, 2014, 13UT (see also Figure 26), vs. Right side: Changed parameters (see also Figure 27).*  

**3.1.3. 3D-Cube Catalogue**  

Besides interactive calculations – either via actual observational data retrieved from database or via individual input parameters – one can also browse through a catalogue of pre-calculated 3D-Cubes for the whole magnetosphere of the Earth. By clicking on 3D-Cube Catalogue in the menu, one gets redirected to a list of 3D-Cubes:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/29_F_29.png" width="500" alt="29">  

*Figure 29*  

The pre-calculated catalogue contains an example of quiet conditions, as well as the following simulations of magnetic storms:  

- Magnetic Storm, November 19-21, 2003
- Magnetic Storm, August 23-25, 2005
- Magnetic Storm, March 6-11, 2012  

The simulations of all of these magnetic storms can directly be downloaded from the website, either in txt-, or netcdf-format. As one can see there were several model runs performed during each of the magnetic storm. All runs can be downloaded together in a zipped format for further processing.  


**3.1.4. Documentation**


The documentation section of the interactive website can be accessed by clicking on Documentation in the top menu. This section does not only include a description of the model in pdf-format (see Figure 30), but also an introduction in the usage of the SINP PMM software (see Figure 31).  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/30_F_30.png" width="500" alt="30">  

*Figure 30*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/31_F_31.png" width="500" alt="31">  

*Figure 31*  

**3.1.5. The Source Code of the SINP PMM**  

The source code of the SINP PMM is directly available at the website (top menu – Source Code). It is displayed directly on the web, but can also be downloaded directly from the website by clicking on Download code. A precise description on the source code, as well as how to manipulate it, can be found in the Documentation section of the website (see also Section  3.1.4 ).  


<h3 id="3.2">3.2 The SINP PMM in AMDA</h3>

One of the great achievements of IMPEx was the inclusion of the SINP PMM into the web-based visualization tool AMDA (Automated Multi-Dataset Analysis), which can be accessed via http://amda.cdpp.eu/. The so-called On-the fly-runs of the SINP PMM are so far available for Earth and Mercury (as on May 27, 2014) and are directly accessible via the Remote Database for Simulations within AMDA - the SINP PMM version, which is implemented, is the A2000 model. This demonstrator will focus on the Earth On-the-fly-runs.  

Within AMDA one has the possibility to plot the SINP PMM on a diverse amount of spacecraft orbits within an orbit of X=[-40, 20], Y=[-30,30], and Z=[-30, 30] Earth radii (just to remember, the radius of the Earth RE = 12,742 km). The model output can then be compared with the observational data of the respective spacecraft. This can be done by a simple plot (as will be shown in Section  3.2.2 but also by deriving further parameters of simulation and observational data. An example of a derived parameter, which allows deriving the adequacy of the SINP PMM in comparison with observational data, is the rms-deviation. This will be described in Section  1   




**3.2.1. Getting Started**  

At a starting point, one has to go to the AMDA-website - http://amda.cdpp.eu/ - and to login. If this is the first visit at AMDA and no user-account exists so far, one has to register first. This can be achieved by clicking on the Register button, as can be seen in Figure 32. The email-client will then open requesting to send an email to amda@irap.omp.eu. The responsible at CDPP are quite quick in replying and creating a user-account for AMDA – so don’t worry, playing around with the SINP PMM in AMDA can start soon.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/32_F_32.png" width="500" alt="32">  
*Figure 32*  



If one wants to know more about AMDA and its functionalities first – even before registering – one can click First visit, demo tour button on the upper side of the website. A demo-tour through AMDA will then be opened, describing all functionalities of the tool interactively and in great detail.  

After a user-account was created successfully, one can log-in and the web-based database will start instantly. On the left side the Workspace Explorer can be seen, displaying a tree with Local Data, Remote Data for observations, as well as for simulations. Clicking on Remote Data (Simulation) will open the tree with all available simulation models implemented in AMDA so far (see Figure 33).  On the lower right part of the workspace one can see several buttons for all of the functionalities, which can be used in AMDA. These are from the left to the right  

- Help
- Create/Modify parameter
- Plotting data
- Data mining
- Download data
- Upload data
- Manage time tables
- TimeTables Operations, and
- Interoperability


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/33_F_33.png" width="500" alt="33">  
*Figure 33*  
For the upcoming sections Plotting data, as well as Create/Modify parameter will be of particular interest.  

**3.2.2. Plotting the SINP PMM Earth On-the-fly-runs in AMDA**  

By clicking on Plotting data, a window called Plot Manager will open in AMDA. This always will be needed, if any data should be plottet:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/34_F_34.png" width="500" alt="34">    
*Figure 34*  

Within the Workspace Explorer on the left side of the AMDA environment, one can choose several observational datasets from different space missions, as well as several model runs from different simulation databases, among them the SINP PMM Earth on-the-fly-runs. For the first plot of this example, the following data will be used:   

- Cluster 1 magnetic field data, FGM instrument, Bz-component:
Within the Workspace Explorer choose  
Parameters/Local Data/CLUSTER/CLUSTER1/FGM/fgm_5vps/bz  
By mouse over fgm_5vps a small infobox appears displaying sampling rate, original data provider, as well as the timeframe for which data is available (see Figure 35).  
Via drag & drop the parameter can simply be dragged into the Plot Manager.  


- Cluster 1 ephemeris data:  
Choose Parameters/Local Data/CLUSTER/CLUSTER1/ephemeris/orbit/xyz_gsm and drag & drop it to the Plot Manager. Both magnetic field data, as well as ephemeris data are now in different so-called Panels within the Plot Manager. This means that both parameters will be plotted in different plots (see Figure 36).  

Be aware that the SINP PMM is only working within X=[-40, 20], Y=[-30,30], and Z=[-30, 30] RE. Outside of this region the On-the-fly calculation of the model cannot be performed. Plotting the ephemeris of Cluster1 will assure, if the spacecraft is in an appropriate region around Earth.  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/35_F_35.png" width="500" alt="35">    
*Figure 35*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/36_F_36.png" width="500" alt="36">    
*Figure 36*  

At the bottom left of the Plot Manager the section Time Selection can be found (see Figure 37). The time interval for the plot will be put into these fields. Make assure that the check box Interval is chosen and change the time frame to  

Start Time: 2012/06/16 08:00:00  
Stop Time: 2012/06/17 02:00:00  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/37_F_37.png" width="200" alt="37">    
*Figure 37*  

We will now check, if the Cluster1 spacecraft is in the respective area on Earth. By clicking on Plot within the Plot Manager, the plot processing will be started. This may take some time, depending on the data, which has to be plotted, as well as on the available internet connection. After some time, a plot containing Cluster1 BZ and ephemeris-data will appear:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/38_F_38.png" width="500" alt="38">    

*Figure 38*  
As one can see Cluster1 is for the whole time range within the respective area of X=[-40, 20], Y=[-30,30], and Z=[-30, 30] RE.  

The next step is to add the SINP  A2000-Earth-On-the-fly model to this plot, i.e. the additional data we will use for the next plot is:  

SINP  A2000-Earth-On-the-fly model, magnetic field data, BZ-component:  
Choose Remote Data (Simulations)/MODELS@SINP/MF-PARABOLOID_SINP/A2000--Earth On the Fly/Magnetic Field/Magnetic Field Vector/Bz and drag & drop it to the Plot Manager. A window will appear, asking for a selection of the respective Satellite, on which trajectory the A2000-Earth-On-the-fly model should be calculated and plotted. By clicking on the drop down menu Satellite a list of spacecraft will appear, for which the SINP PMM around Earth in general can be calculated and plotted:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/39_F_39.png" width="500" alt="39">    

*Figure 39*  

Choose CLUSTER1 and click on Apply. A third panel within the Plot Manager will now appear, containing the BZ-component of the magnetic field on the trajectory of Cluster1 as calculated by SINP PMM. Check on the right side of the Panel at Parameter Arguments if Satellite=CLUSTER1 is chosen correctly (see Figure 40). If yes, by clicking on Plot the next plot will be processed and plotted, containing a third plot window, i.e. the SINP PMM (see Figure 41).  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/40_F_40.png" width="500" alt="40">    

*Figure 40*  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/41_F_41.png" width="500" alt="41">    

*Figure 41*  

Besides plotting the SINP PMM into another Panel, it is also possible to plot it within the same panel as the Cluster1 magnetic field data. Drag & drop the SINP-parameter, i.e. impex_SINP_NumericalOutput_Earth_OnFly_Bx_By_Bz_Bz into Panel 1, i.e. to the Cluster1 magnetic field parameter c1_b_5vps(2). Panel 3 can then be deleted by clicking on the red x on the left of Panel 3.  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/42_F_42.png" width="500" alt="42">    

*Figure 42*

For now, both graphs would be black, i.e. they would be difficult to tell apart. For that reason the color or the general formatting of one of the graphs should be changed. To do that for the Cluster1 parameter, one has to click on select… corresponding to c1_b_5vps(2) at Parameter Arguments. If done so, a popup-window will appear, where several formatting changes can be performed:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/43_F_43.png" width="500" alt="43">    

*Figure 43*  

It is now possible to change either the color of the graph, the graph symbol, as well as the scale of the graph. By clicking on one of the drop-down menus and choosing the respective choice, the changes can be performed. For that example, the color of the graph was changed from black to red. The chances become valid after clicking on Apply.  

By clicking on Plot within the Plot Manager a new plot will be generated, with Cluster as well as SINP PMM data within the same plot:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/44_F_44.png" width="500" alt="44">    

*Figure 44*  

Please be aware that in this plot (Figure 44) the SINP PMM parameter is shifted down the y-axes.  

There are a lot of further possibilities within AMDA for data manipulation. Besides several manipulation possibilities for the plot formatting, there is e.g. the possibility to download the retrieved data sets.  


**3.2.3. Deriving a Parameter: The Root-Mean-Square-Deviation as an Example**


Section  2.4 was already dedicated to the comparison of SINP PMM with experimental data. A comparison of simulation and observational data can also be performed within AMDA. But besides the comparison of simple plots, AMDA can also perform much more sophisticated manipulations of data sets. By way of example one can derive and define individual parameters. This can also be used to compare On-the-fly-runs with the respective observational data.


A common method for the comparison of observational data with simulation data is the Root-Mean-Square-Deviation (RMSD). This is defined as follows (see also Section  2.3 ):

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/6_Formula.png" width="100" alt="6_formula">  

where xS,i are the simulated values of any given parameter, and xO,i are the observational values of any given parameter. To perform the Root-Mean-Square-Deviation within AMDA we will proceed with the example from Section  3.2.2 . The following parameters will again be dragged & dropped into the Plot Manager:  

- Cluster 1 magnetic field data, FGM instrument, Bz-component:
Within the Workspace Explorer choose 
Parameters/Local Data/CLUSTER/CLUSTER1/FGM/fgm_5vps/bz

- SINP  A2000-Earth-On-the-fly model, magnetic field data, BZ-component:
Choose Remote Data (Simulations)/MODELS@SINP/MF-PARABOLOID_SINP/A2000--Earth On the Fly/Magnetic Field/Magnetic Field Vector/Bz  

The same timeframe will be used as in Section  3.2.2 , i.e.:  

- Start Time: 2012/06/16 08:00:00  
- Stop Time: 2012/06/17 02:00:00  

The most important part is the definition of the new parameter RMSD: The window Create/modify parameters has to be opened via the respective button on the bottom left of the AMDA-webpage:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/45_F_45.png" width="500" alt="45">
*Figure 45*  

On the top right side of the Create/modify parameters window, one can find the section Tools For Parameter Construction, including three different tabs: Calculator, Constants and Functions. Opening the tab Functions returns four further sub-tabs, i.e. Simple Maths, Statisticcs, and Statistics/Sliding and Space Physics:

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/46_F_46.png" width="500" alt="46">  

*Figure 46*  

Within the sub-tab Statistics, there is an already predefined function called rms_(,). This is the Root-Mean-Square, i.e.:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/46_RMS.png" width="100" alt="46_RMS">  

where yi are values of any given parameter. We can use this predefined function as the starting point for the RMSD: By clicking on rms_(,) a small pop-up window appears called Argument, asking about the input averaging time in secs. We will by now choose 600 seconds as averaging time:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/47_F_47.png" width="500" alt="47">    

*Figure 47*  

By clicking on the OK button, a message will appear that “you’ll have to add 1 parameter(s) to apply this function”.  

Drag & drop the SINP-parameter, i.e. impex_SINP_NumericalOutput_Earth_OnFly_Bx_By_Bz_Bz from the Workspace Explorer directly into the rms-function (between left bracket and the comma). A pop-up window will appear, asking for the Satellite, on which trajectory the SINP Earth-On-the-Fly model should be calculated. Choose again CLUSTER1:  


<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/48_F_48.png" width="500" alt="48">    

*Figure 48*  

The now displayed parameter would return the RMS for the SINP PMM along the trajectory of Cluster1, averaged over 600 seconds. However, this parameter has now to be modified to the RMSD. For that purpose, the BZ-component of the magnetic field as measured by Cluster1 has to be subtracted from the modeled BZ-component as simulated by the SINP PMM within the rms-function.  

Insert a minus (a hyphen) directly after the SINP-parameter and just before the comma. Then drag & drop the Cluster1 magnetic field parameter c1_b_5vps(2) directly after the comma and just before the comma into the function. The following constructed parameter will then appear:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/49_F_49.png" width="500" alt="49">    

*Figure 49*  

Before saving the defined RMSD, one has to provide the Time Step (sec) for the parameter. Choose 600 seconds again, insert a Parameter Name and save the newly defined parameter:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/50_F_50.png" width="500" alt="50">  

*Figure 50*  

The new parameter (i.e. rmsd_sinp_cluster1 within this demonstrator) will now appear in the Workspace Explorer in the tree under Derived Parameters:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/51_F_51.png" width="500" alt="51">    

*Figure 51*  

Drag & drop the new parameter into the Plot Manager. There should be three parameters in three different Panels, i.e. the BZ-component of the magnetic field as measured by Cluster1, the BZ-component of the magnetic field as simulated by the SINP PMM; as well as the RMSD of both as currently defined in AMDA:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/52_F_52.png" width="500" alt="52">    

*Figure 52*  

Plot the data:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/53_F_53.png" width="500" alt="53">    

*Figure 53*  

It is also possible to edit the derived parameter. Go to the Workspace Explorer and right-click on the RMSD-parameter (i.e. rmsd_sinp_cluster1). A small pop-up window will appear:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/54_F_54.png" width="500" alt="54">    

*Figure 54*  

By clicking on Edit Parameter the Create/modify parameters window will appear, with the RMSD-parameter already included. The averaging time, as well as the time step can now be changed to e.g. 3600 seconds both. Saving and plotting again the modified parameter yields:  

<img src="https://raw.githubusercontent.com/megadiesel705/tutorials/master/IMPEx_FP7/SINP-Model-Demonstrators/img/55_F_55.png" width="500" alt="55">    

*Figure 55*  

The resolution of the RMSD-parameter has now changed accordingly.  


<h2 id="4">4. Useful Links</h2>


[IMPEx Tools and System Requirements](http://impex-fp7.oeaw.ac.at/tools.html)  
[SINP PMM Interactive Website](http://smdc.sinp.msu.ru/index.py?nav=paraboloid/index)  
[SINP PMM Source Code](http://smdc.sinp.msu.ru/content/paraboloid/parabmod.for)  
[SINP – Skobeltsyn Institute of Nuclear Physics, Lomonosov Moscow State University](http://www.sinp.msu.ru/en)  
[AMDA – Automated Multi-Dataset Analysis](http://amda.cdpp.eu)  
[3DView/IMPEx](http://3dview.cdpp.eu)  
[IWF – Institut fuer Weltraumforschung](http://iwf.oeaw.ac.at)  
[IMPEx FP7 – Integrated Medium for Planetary Exploration](http://impex-fp7.oeaw.ac.at/tools.html)  

<h2 id="References">References</h2>

Please refer this tutorial to [original site](https://sites.google.com/site/impexfp7/home/sinp-model-demonstrators)







