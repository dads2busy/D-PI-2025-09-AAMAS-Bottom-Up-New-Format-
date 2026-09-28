# MEKH Process Factual Accuracy — LLM-as-Judge Report

Generated: 2026-09-28 19:17 UTC
Judge model: `claude-cli:claude-sonnet-5-5`

## Summary

| Condition | Processes | Overall correct | Process plausible | I/O correct | HS codes correct |
|-----------|----------:|----------------:|------------------:|------------:|-----------------:|
| boron | 129 | 49/129 (38.0%) | 127/129 (98.4%) | 102/129 (79.1%) | 58/129 (45.0%) |

## Precision proxy

Precision proxy = (overall correct) / (total judged)

- **boron**: 0.380

## Error modes

### boron
- `hs_code_mismatch`: 43
- `missing_precursors`: 4
- `hs_code_mismatch_precursor`: 2
- `missing_precursor`: 2
- `hs_code_mismatch_product`: 2
- `wrong_process_name_and_stoichiometry`: 1
- `missing_precursor_and_hs_code_mismatch`: 1
- `hs_code_mismatch_and_missing_inputs`: 1
- `incorrect_process_conditions`: 1
- `duplicate_product_and_missing_hs_codes`: 1
- `hs_code_mismatch_and_inconsistent_stoichiometry`: 1
- `inconsistent_inputs_and_hs_codes`: 1
- `duplicate_precursor_and_water_hs_code_mismatch`: 1
- `incorrect_inputs_and_hs_codes`: 1
- `input_mismatch_and_hs_code_issue`: 1
- `wrong_hs_code_and_incomplete_inputs`: 1
- `hs_code_mismatch_output`: 1
- `incorrect_hs_code_for_precursor`: 1
- `wrong_hs_code_and_missing_inputs`: 1
- `hs_code_mismatch_and_input_output_issues`: 1
- `incomplete_inputs_and_missing_hs_code`: 1
- `hs_code_mismatch_for_in_situ_precursor`: 1
- `missing_or_duplicated_precursor`: 1
- `incomplete_and_duplicated_inputs`: 1
- `product_hs_code_mismatch`: 1
- `hs_code_mismatch_and_redundant_outputs`: 1
- `missing_or_invalid_precursor_hs_code`: 1
- `hs_code_mismatch_or_missing`: 1
- `hs_code_mismatch_input`: 1
- `wrong_hs_code_and_missing_input`: 1
- `incomplete_or_inconsistent_outputs`: 1
- `incorrect_hs_code_and_missing_precursors`: 1

## Per-process details

### boron

**[INCORRECT (hs_code_mismatch)]** Hydrogen reduction of boron trichloride (BCl3) to yield refined elemental boron (including isotopica
  - Precursors: Boron trichloride (BCl3), Hydrogen gas
  - Products: Refined elemental boron (including isotopically enriched forms), Hydrogen chloride (byproduct, usually neutralized or scrubbed)
  - Rationale: Hydrogen reduction of BCl3 (BCl3 + 3/2 H2 → B + 3 HCl) is a real, documented route to high-purity boron, including CVD and isotopically enriched variants. The inputs and outputs are correct, with HCl as the byproduct. However, BCl3 is a chloride of a non-metal and belongs under HS 2812.19 (other chlorides and chloride oxides), not 2812.90, which covers other halides such as fluorides. The boron output code 284520 (boron enriched in B-10) only covers the enriched form, not general elemental boron (2804.50), which makes it a partial fit.

**[INCORRECT (hs_code_mismatch)]** Reduction of boron trioxide (B2O3) with magnesium metal at high temperatures to produce elemental bo
  - Precursors: Boron trioxide (B2O3), Magnesium
  - Products: Refined elemental boron, Magnesium oxide (byproduct, discarded or processed)
  - Rationale: Magnesiothermic reduction of B2O3 (the Moissan process) is a real, well-documented route to amorphous elemental boron, with MgO as the byproduct, so the process and its inputs and outputs are correct. The HS codes are wrong in two places. HS 810420 is magnesium waste and scrap, not magnesium metal in general (unwrought is 810411/810419). HS 284520 covers lithium enriched in lithium-6 (isotope compounds), not ordinary elemental boron, which belongs under 280450. The process description itself says isotopic enrichment is not required.

**[INCORRECT (hs_code_mismatch)]** Production of elemental boron via magnesiothermic reduction of boron oxide. Boron oxide is reduced w
  - Precursors: Boron oxide (B2O3), Magnesium (Mg)
  - Products: Elemental boron, Magnesium oxide (MgO), removed as waste
  - Rationale: Magnesiothermic reduction of B2O3 (B2O3 + 3Mg -> 2B + 3MgO) is the documented Moissan process for amorphous elemental boron, and the listed inputs and outputs (MgO as by-product) are correct. HS 281000 (oxides of boron) and HS 280450 (boron) match their materials. However, HS 810420 is 'Magnesium waste and scrap', not magnesium metal as a virgin reductant, which would fall under 810411/810419 (unwrought) or 810430 (raspings, turnings, granules), so the Mg code is a mismatch.

**[INCORRECT (hs_code_mismatch_precursor)]** Extraction of tellurium as a by-product from copper anode slime. After copper electrolytic refining,
  - Precursors: Copper anode slime
  - Products: Elemental tellurium, Other metal byproducts or residue
  - Rationale: Recovering tellurium from copper anode slime is a well-documented industrial route: the slime is oxidized (soda roast or pressure leach), leached, and the TeO2 is purified and then reduced with SO2 or by electrowinning. The listed outputs, tellurium and residue, are reasonable, and HS 280450 (boron; tellurium) is correct. However, HS 740200 covers unrefined copper and copper anodes for electrolytic refining, not anode slime. Slime is a metal-bearing residue that would normally fall under Chapter 26 (e.g. 2620/2620.99 slags, ash and residues), so the precursor code is wrong.

**[CORRECT]** Refining of natural borate minerals (tincal) via dissolution, purification, and recrystallization to
  - Precursors: Natural borates and concentrates thereof (including tincal, crude natural borax)
  - Products: Disodium tetraborate (refined borax), other than anhydrous
  - Rationale: Refining tincal (crude natural sodium borate) by dissolution in hot water, clarification/removal of insolubles, and crystallization to yield borax decahydrate is a well-documented industrial process (e.g., Searles Lake, Boron, Kırka). HS 252800 covers natural borates and concentrates, and HS 284019 covers disodium tetraborate (refined borax) other than anhydrous, matching the decahydrate product. Inputs and outputs are consistent, with water and heat as implicit utilities.

**[CORRECT]** Production of ammonium borate by reacting boric acid with ammonium hydroxide in aqueous solution. Am
  - Precursors: Boric Acid, Ammonium Hydroxide
  - Products: Ammonium Borate
  - Rationale: Neutralizing boric acid with aqueous ammonia, then evaporating to crystallize ammonium borate (typically ammonium pentaborate tetrahydrate), filtering and drying is a well-documented route. Boric acid and ammonium hydroxide are the necessary inputs, and ammonium borate is the expected product. HS 281000 (oxides of boron; boric acids) and 284020 (borates other than disodium tetraborate and perborates) match the named materials. The missing HS code for ammonium hydroxide (it would fall under 281400) is an omission, not a mismatch.

**[CORRECT]** Carbothermal reduction of boric oxide with petroleum coke in an electric arc furnace to produce boro
  - Precursors: Boric oxide, Petroleum coke
  - Products: Boron carbide
  - Rationale: Carbothermal reduction of B2O3 with carbon (2B2O3 + 7C -> B4C + 6CO) in an electric arc furnace is the standard industrial route to boron carbide, and petroleum coke is a common carbon source. The inputs are correct, and the CO byproduct is a gas that is not listed as an output. The HS codes match: 281000 covers boron oxides and boric acids, 271312 is calcined petroleum coke, and 284990 is carbides other than calcium and silicon, which includes boron carbide.

**[CORRECT]** Direct reaction of elemental boron with carbon powder at high temperatures to produce boron carbide 
  - Precursors: Elemental boron, Carbon (powder)
  - Products: Boron carbide
  - Rationale: Direct synthesis of boron carbide from the elements (4B + C → B4C at roughly 1500-2000°C) is a documented route, though industry mostly uses carbothermal reduction of B2O3, so the description's 'laboratory or specialty' qualifier is accurate. Elemental boron and carbon powder are the correct and sufficient reactants, and B4C is the product. The HS codes match: 2804.50 covers boron and tellurium, 2803.00 covers carbon (carbon blacks and other forms), and 2849.90 covers other carbides, including boron carbide.

**[INCORRECT (wrong_process_name_and_stoichiometry)]** Commercial Bayer process for sodium borohydride (NaBH4) production: reaction of borax, sodium, and h
  - Precursors: Borax (sodium tetraborate), Sodium, Hydrogen gas
  - Products: Sodium borohydride, Sodium oxide (by-product)
  - Rationale: The Bayer process is for alumina production from bauxite, not sodium borohydride; the commercial NaBH4 route is the Brown-Schlesinger process (NaH + trimethyl borate) or the direct route of borax/borate, sodium (or Na and SiO2/MgH2) and hydrogen. The reaction as described (borax + Na + H2 giving NaBH4 and Na2O) is a garbled version of the borax/Na/H2/SiO2 route, in which silica is needed and sodium silicate is the byproduct, so Na2O by-product without silica is not a correct output. HS codes are also incomplete: borax and hydrogen and sodium oxide lack codes, and sodium borohydride is unknown, though sodium 280511 is correct for alkali metals (Na is 280511 for alkali metals is right).

**[INCORRECT (hs_code_mismatch)]** Laboratory and industrial synthesis of borane complexes (e.g., borane-amine) by direct reaction of d
  - Precursors: Diborane (boron hydride) and borane complexes, Triethylamine
  - Products: Borane-amine complex
  - Rationale: Reaction of diborane with tertiary amines (e.g., triethylamine, trimethylamine) in ether to give borane-amine adducts (R3N·BH3) is a real, well-documented synthesis, and the inputs and output are chemically correct. HS 285000 is a real heading (6-digit form 2850.00, hydrides, nitrides, azides, silicides and borides), which plausibly covers diborane. However, the 'HS None' entries for triethylamine and the borane-amine complex are missing codes. Triethylamine belongs to HS 292119 (acyclic monoamines), and the borane-amine complex would likely fall under 285000 or 292119, so the codes are incomplete.

**[CORRECT]** Industrial production of boron trifluoride by reacting boron trioxide with hydrogen fluoride. This p
  - Precursors: Boron trioxide, Hydrogen fluoride
  - Products: Boron trifluoride, Water
  - Rationale: The reaction B2O3 + 6HF → 2BF3 + 3H2O is the documented industrial route to BF3. In practice HF is often generated in situ from fluorspar and sulfuric acid, which also acts as the dehydrating agent, but the simplified stoichiometry is valid. The HS codes match: 281000 covers boron oxides, 281111 is hydrogen fluoride, and 281290 covers other halides of non-metals, including BF3. Water has no HS code, which is acceptable.

**[CORRECT]** Potassium fluoroborate is produced commercially by reacting boric acid with potassium fluoride and h
  - Precursors: Boric Acid, Potassium Fluoride, Hydrofluoric Acid
  - Products: Potassium fluoroborate, Byproducts removed as waste
  - Rationale: KBF4 is made industrially from boric acid, hydrofluoric acid (forming fluoroboric acid HBF4) and a potassium source such as KOH, K2CO3, or KF; using KF with HF and H3BO3 is a workable variant (H3BO3 + 4HF + KF -> KBF4 + 3H2O). The HS codes fit: 281000 is boric acid (oxides of boron; boric acids), 282619 is other fluorides (KF), 281111 is hydrogen fluoride, and 282690 is other fluorides and complex fluorine salts (KBF4). Water and unreacted materials are plausible waste, so the inputs and outputs are consistent.

**[INCORRECT (hs_code_mismatch)]** Industrial production of sodium perborate by reacting sodium metaborate with hydrogen peroxide in th
  - Precursors: Sodium metaborate, Hydrogen peroxide, Sodium hydroxide
  - Products: Sodium perborate (tetrahydrate or monohydrate), Water
  - Rationale: Making sodium perborate from sodium metaborate and hydrogen peroxide in alkaline medium is a documented industrial route (NaBO2 + H2O2 + 3H2O → NaBO3·4H2O), and the listed inputs and outputs are broadly reasonable. Water is really a reactant for the tetrahydrate, and the monohydrate is made by dehydrating the tetrahydrate, but this is a minor issue. Sodium metaborate is wrongly coded as HS 284019, which covers disodium tetraborate (refined borax) other than anhydrous. It belongs under 284020 (other borates). The other codes are fine: 284700 for hydrogen peroxide, 281512 for aqueous sodium hydroxide, and 284030 for perborates.

**[INCORRECT (hs_code_mismatch)]** Synthesis of boron nitride by reacting boric acid (H3BO3) or boron oxide (B2O3) with ammonia (NH3) i
  - Precursors: Oxides of boron; boric acids, Ammonia
  - Products: Boron nitride
  - Rationale: Nitridation of boric acid or B2O3 with ammonia at high temperature (often with a calcium phosphate carrier or in N2) is a documented industrial route to hexagonal boron nitride. However, HS 281000 covers 'Oxides of boron; boric acids' and is correct for the boron precursor. Boron nitride is not classified at 285090; 2850 covers hydrides, nitrides, azides, silicides and borides, and boron nitride would fall under 285000 subheadings (2850.00), where 285090 is a residual code for 'other' compounds, so the specific code is questionable. Ammonia has no HS code listed (should be 281410 anhydrous ammonia), so the precursor coding is incomplete.

**[INCORRECT (hs_code_mismatch)]** Hydroboration of alkenes or alkynes with borane or substituted boranes to produce organoboranes (tri
  - Precursors: Alkenes or Alkynes, Borane (BH3) or Borane reagents
  - Products: Organic boron compounds (including organoboranes)
  - Rationale: Hydroboration of alkenes and alkynes with borane or substituted boranes is a well-documented reaction that gives organoboranes (Brown hydroboration), and the inputs and outputs are chemically appropriate. HS 285000 (hydrides, including boranes) and HS 293190 (other organo-inorganic compounds) fit their materials. However, HS 290110 covers saturated acyclic hydrocarbons, not unsaturated alkenes or alkynes, which belong under 2901.21-2901.29. The alkene/alkyne precursor code is therefore wrong.

**[INCORRECT (hs_code_mismatch)]** Preparation of organoboron compounds via reaction of organolithium or Grignard reagents with boron t
  - Precursors: Organolithium or Grignard reagents, Boron trihalides (e.g., boron trichloride)
  - Products: Organic boron compounds (including organoboranes)
  - Rationale: Reacting organolithium or Grignard reagents with BCl3 or BF3 is a standard, well-documented route to organoboranes and boronic derivatives, and the inputs and outputs are chemically appropriate. However, HS 282590 covers other inorganic bases and metal oxides and hydroxides, so it does not fit organolithium or Grignard reagents. Those are organometallic compounds, which would fall under 2931 (organo-inorganic compounds). The boron trihalide code 281290 is roughly acceptable for BF3 but is imprecise for BCl3, which falls under 2812.19. The product code 293190 is reasonable.

**[INCORRECT (hs_code_mismatch)]** Industrial synthesis of arylboronic acids and esters by palladium-catalyzed borylation (e.g., Miyaur
  - Precursors: Aryl halides, Diboron reagents (e.g., bis(pinacolato)diboron)
  - Products: Organic boron compounds (including organoboranes)
  - Rationale: Miyaura borylation, in which a Pd catalyst couples aryl halides with B2pin2 to make arylboronic esters, is a well-documented process that is used industrially. The aryl halide code (2903.99, other halogenated aromatic derivatives) and the product code (2931.90, other organo-inorganic compounds) are plausible. However, HS 2829.90 covers chlorates, perchlorates, bromates and iodates, which does not match bis(pinacolato)diboron. That reagent is an organoboron compound and would fall under 2931.90. The listed inputs also omit the base (e.g., KOAc) and the Pd catalyst, but the main issue is the wrong code.

**[INCORRECT (missing_precursor_and_hs_code_mismatch)]** Alloying of molten carbon or low-alloy steel (HS 722410) with ferroboron (HS 720260) in the ladle me
  - Precursors: Ferroboron
  - Products: Boron-alloyed steel (ferroalloy or special alloy steel containing boron)
  - Rationale: Adding ferroboron to ladle steel to make boron-alloyed steel is a real, widely used practice, so the process is plausible. However, the precursor list omits the molten base steel, which is the main input. The description also gives ferroboron as HS 720260, which is ferronickel (the precursor field's 720299 is correct for ferroboron), so the codes are inconsistent. The product code 722790 covers hot-rolled bars and rods of other alloy steel in irregularly wound coils, not ladle-stage liquid steel or primary forms, which fall under 7224 (e.g., 722410).

**[CORRECT]** Tank melting and forming process for borosilicate glass rods and tubes: High-purity silica sand, bor
  - Precursors: Silica sand, Boric oxide, Soda ash (Sodium carbonate), Alumina (Aluminium oxide)
  - Products: Borosilicate glass (unworked rods and tubes)
  - Rationale: Melting silica sand, boric oxide, soda ash and alumina in a continuous tank furnace at about 1,600-1,650°C, then forming rods and tubes, is a standard borosilicate glass process (Duran/Pyrex-type). The inputs are appropriate, since silica is the main glass former, B2O3 is the borosilicate former, soda ash is the flux and alumina is a minor stabilizer. The HS codes match their names: 250510 silica sands, 281000 boron oxides, 283620 disodium carbonate, 281820 aluminium oxide and 700220 unworked glass rods. One minor caveat is that unworked borosilicate tubes would strictly fall under 700232, but the rod code is acceptable for this combined rod-and-tube product.

**[INCORRECT (hs_code_mismatch)]** Melting and forming of borosilicate glassware by mixing and melting high-purity silica sand, boron t
  - Precursors: Silica sand, Boron trioxide, Aluminum oxide, Sodium oxide
  - Products: Borosilicate laboratory glassware
  - Rationale: Borosilicate glassware production by batch melting, forming and annealing is a real, well-documented process. The inputs are broadly reasonable, though sodium oxide is normally supplied as soda ash (sodium carbonate) and has no assigned HS code here. The silica sand (250510) and aluminum oxide (281820) codes fit. The boron trioxide code (28100010) is a plausible national extension of 2810. Borosilicate laboratory glassware, with a low thermal expansion coefficient of about 3.3e-6/K, belongs under 701720 (low-expansion laboratory glassware), not 701790 (other). The product code is therefore wrong.

**[CORRECT]** Batch melting of silica sand, boric oxide, soda ash, potassium carbonate, and lime in a furnace to p
  - Precursors: Silica sand, Boric Oxide, Soda Ash (Sodium Carbonate), Potassium Carbonate, Lime (Calcium Oxide)
  - Products: Borosilicate glass frit and powder
  - Rationale: Batch melting of silica, boron oxide, and alkali/alkaline-earth fluxes, followed by water quenching and milling, is the standard route to borosilicate frit for enamels, glazes, and sealing glasses. The listed inputs are sensible (silica former, B2O3 network former, and Na2O, K2O and CaO from the carbonates and lime), and the frit and powder output matches the process. The HS codes fit: 250510 silica sand, 281000 boron oxides, 283620 sodium carbonate, 283640 potassium carbonate, 282590 for high-purity calcium oxide, and 320740 for glass frit and powder. The 282590 code is a minor borderline, since commercial quicklime falls under 2522, but it is defensible.

**[INCORRECT (hs_code_mismatch_and_missing_inputs)]** Production of elemental boron (including isotopically enriched boron-10) by fused-salt electrolysis 
  - Precursors: Boron trioxide (natural or enriched), Electrolyte salts (e.g., potassium fluoride, potassium chloride, potassium tetrafluoroborate)
  - Products: Elemental boron (natural or enriched), Hydrogen chloride (byproduct, if BCl3 reduction used)
  - Rationale: Fused-salt electrolysis of B2O3 in KCl/KF/KBF4 melts and BCl3 reduction for enriched boron are real processes, so the process is plausible. However, the BCl3/HCl route needs hydrogen, chlorine and a chlorination reductant such as carbon, and none are listed as inputs. HS 284520 covers only boron enriched in boron-10 and its compounds, whereas natural elemental boron falls under 280450. HS 282690 does not cover potassium chloride, which is a chloride under 2827 or a fertilizer heading, so the code fits only the fluoride and fluoroborate salts. B2O3 (281000) and HCl (280610) are correct.

**[INCORRECT (incorrect_process_conditions)]** Thermal dehydration of borax hydrates (decahydrate or pentahydrate) to produce disodium tetraborate 
  - Precursors: Borax decahydrate
  - Products: Disodium tetraborate (anhydrous borax)
  - Rationale: Dehydrating borax hydrates to anhydrous borax is a real industrial process, and the inputs and outputs are appropriate. However, the description says the material melts to a glass at 350-400°C, which is wrong. Calcination at that temperature gives a dehydrated powder, while anhydrous borax melts at about 743°C and glassy borax is made by fusion in furnaces at roughly 900-1200°C. The HS codes are correct: 284019 covers borax other than anhydrous, such as the decahydrate, and 284011 covers anhydrous disodium tetraborate.

**[INCORRECT (duplicate_product_and_missing_hs_codes)]** Industrial synthesis of diborane (B2H6) by reduction of boron trichloride (BCl3) with lithium alumin
  - Precursors: Boron trichloride, Lithium Aluminium Hydride
  - Products: Diborane (boron hydride) and borane complexes, Lithium chloride, Aluminium trichloride, Aluminium chloride
  - Rationale: The reaction 4 BCl3 + 3 LiAlH4 -> 2 B2H6 + 3 LiCl + 3 AlCl3 is a real, documented route to diborane, so the process is plausible, though it is mainly a laboratory method rather than the dominant industrial route (NaBH4-based routes are more common). The output list is redundant: aluminium trichloride and aluminium chloride are the same compound listed twice, once without an HS code. The codes that are given fit their materials (281290 for other halides of non-metals, 282520 for lithium oxide/hydroxide is wrong, since LiAlH4 is not lithium oxide or hydroxide, and 285000 for hydrides, 282732 for aluminium chloride). Lithium chloride has no HS code, though 282739 would apply, so the HS coding is incomplete and partly incorrect.

**[INCORRECT (hs_code_mismatch)]** Synthesis of boron phosphide by self-propagating high-temperature synthesis (SHS) of boron phosphate
  - Precursors: Boron phosphate, Magnesium
  - Products: Boron phosphide, Magnesium oxide
  - Rationale: Magnesiothermic reduction of BPO4 (roughly BPO4 + 4Mg → BP + 4MgO) under SHS conditions, followed by an acid wash to remove MgO, is a documented and stoichiometrically reasonable route to BP. The inputs and outputs are consistent, with MgO as the byproduct. Boron phosphate (2835.29) and unwrought magnesium (8104.11) codes are plausible. However, boron phosphide is a phosphide and belongs under HS 2853 (phosphides, e.g. 2853.90). HS 2850 covers hydrides, nitrides, azides, silicides and borides, so 285090 is the wrong code.

**[INCORRECT (hs_code_mismatch)]** Synthesis of boron nitride ceramic via boron halide (e.g., BCl3) reacting with ammonia to form inter
  - Precursors: Boron halide (e.g., BCl3), Ammonia
  - Products: Boron nitride
  - Rationale: The chemistry is real: BCl3 reacts with NH3 to form amino/imide intermediates such as B(NH2)3 and adducts, and heating these releases NH4Cl and yields boron nitride. The listed inputs and outputs are appropriate, though the NH4Cl byproduct is not listed. Ammonia at 281410 is correct. Boron nitride falls under heading 2850, which has a single 6-digit subheading, 285000, so 285090 does not exist in the HS. BCl3 is a chloride of a non-metal, which falls under 2812.1x (2812.19 in HS 2022) rather than the 'other halides' code 281290.

**[CORRECT]** Synthesis of boron nitride by direct nitridation of elemental boron with nitrogen gas at high temper
  - Precursors: Elemental boron, Nitrogen
  - Products: Boron nitride
  - Rationale: Direct nitridation of elemental boron with N2 (2B + N2 -> 2BN) at roughly 1200-2000 °C is a documented route to hexagonal boron nitride. Boron and nitrogen are the only required reactants, and BN is the sole product. HS 280450 (boron; tellurium) and 280430 (nitrogen) are correct. Boron nitride falls under heading 2850 (nitrides), so the product code is consistent with the commodity, although the 6-digit subheading is formally 285000, so '285090' is a minor formatting quirk.

**[INCORRECT (hs_code_mismatch_and_inconsistent_stoichiometry)]** Industrial synthesis of diborane (B2H6) is typically accomplished via the reduction of boron trifluo
  - Precursors: Boron trifluoride, Lithium Aluminium Hydride
  - Products: Diborane (boron hydride) and borane complexes, Lithium tetrafluoroborate, Lithium Fluoride, Aluminium Fluoride
  - Rationale: Reducing BF3 with LiAlH4 or LiH in ether to give diborane is a real, documented route, so the process is plausible. However, the outputs are inconsistent with the listed inputs: LiAlH4 gives LiF and AlF3 (4 BF3 + 3 LiAlH4 → 2 B2H6 + 3 LiF + 3 AlF3), while LiBF4 is the by-product of the LiH route (8 BF3 + 6 LiH → B2H6 + 6 LiBF4). LiH and the ether solvent are not listed as inputs. Several HS codes are also wrong: 284520 covers boron enriched in boron-10, not ordinary BF3, and 282520 covers lithium oxide and hydroxide, not LiAlH4.

**[CORRECT]** Production of zinc borate by reacting boric acid with zinc oxide in aqueous suspension at elevated t
  - Precursors: Boric Acid, Zinc oxide (ZnO)
  - Products: Zinc Borate
  - Rationale: Zinc borate (e.g., 2ZnO·3B2O3·3.5H2O) is commercially made by reacting zinc oxide with boric acid in aqueous suspension at about 80-100 °C, then cooling, filtering, and drying. The inputs (boric acid, ZnO) and output (zinc borate) are correct for this route. The HS codes match: 2810.00 covers boron oxides and boric acids, 2817.00 covers zinc oxide, and 2840.20 covers borates other than sodium tetraborate.

**[CORRECT]** Direct (American) process: Production of zinc oxide from zinc-containing ores or residues. Zinc ores
  - Precursors: Zinc ores and concentrates, Coal (reducing agent), Air (oxygen source)
  - Products: Zinc oxide (ZnO)
  - Rationale: The American (direct) process is a real industrial route: zinc ores or residues are carbothermically reduced to zinc vapor, which is oxidized in air to ZnO. The inputs (zinc ore/concentrate, coal, air) and output (ZnO) are correct. HS 260800 is zinc ores and concentrates, and HS 281700 is zinc oxide and zinc peroxide, so both codes match; coal and air lacking HS codes is acceptable.

**[INCORRECT (missing_precursor)]** Potassium fluoroborate is produced by neutralization of aqueous fluoroboric acid with potassium hydr
  - Precursors: Boric Acid, Hydrofluoric acid, Hydrofluoric acid
  - Products: Potassium fluoroborate
  - Rationale: The route is real and standard: H3BO3 + 4HF gives HBF4, which KOH neutralizes to precipitate KBF4. However, the process description names potassium hydroxide (HS 281520) as a key reagent, and it is missing from the precursor list. Hydrofluoric acid is instead listed twice. The listed HS codes are individually valid: 281000 for boric acid, 281111 for HF, and 282690 for complex fluorine salts such as KBF4.

**[INCORRECT (hs_code_mismatch)]** Potassium fluoroborate may also be produced by neutralizing aqueous fluoroboric acid with potassium 
  - Precursors: Fluoroboric Acid, Potassium carbonate
  - Products: Potassium fluoroborate
  - Rationale: Neutralizing aqueous HBF4 with K2CO3 gives KBF4, water and CO2 (2 HBF4 + K2CO3 → 2 KBF4 + H2O + CO2), which is a real and plausible route, and the listed inputs and outputs are correct. Potassium carbonate (283640) and potassium fluoroborate (282690, other complex fluorine salts) have appropriate HS codes. However, HS 281111 is hydrogen fluoride (hydrofluoric acid), not fluoroboric acid, which would fall under 281119 (other inorganic acids), so the precursor code is wrong.

**[INCORRECT (missing_precursors)]** Industrial froth flotation beneficiation of zinc ores (such as sphalerite, smithsonite, calamine) to
  - Precursors: 
  - Products: Zinc Concentrate
  - Rationale: Froth flotation of zinc ores is a real, well-documented beneficiation process, and HS 260800 (zinc ores and concentrates) correctly covers both raw ore and concentrate. However, the precursor list is empty even though the description names raw zinc ore (HS 260800) as the input, along with reagents such as lime, xanthates, and frothers. The process is therefore missing its key input, so the inputs/outputs are incomplete.

**[INCORRECT (hs_code_mismatch)]** Reaction of acid-grade fluorspar (high-grade CaF2, HS 252922, >97% purity) with preheated concentrat
  - Precursors: Sulfuric acid, Fluorspar (containing by weight more than 97% of calcium fluoride)
  - Products: Hydrofluoric acid, Calcium sulfate (synthetic anhydrite/fluoroanhydrite), Fluorosilicic acid, Silicon tetrafluoride
  - Rationale: Reacting acid-grade fluorspar with concentrated sulfuric acid in a heated rotary kiln to make HF is the standard industrial route. It gives anhydrite (fluoroanhydrite) as the main byproduct, with SiF4 and H2SiF6 from silica impurities. The inputs and outputs are reasonable, and the codes 252922, 280700 and 281111 are correct. However, HS 252020 is plasters (calcined gypsum), while anhydrite is 252010. SiF4 is not under 281210, which covers chlorides and chloride oxides, and would fall under 281290. Fluorosilicic acid under 282690 (fluorosilicates) is also questionable, since the acid is usually classed under 2811.

**[INCORRECT (inconsistent_inputs_and_hs_codes)]** Production of hydrogen fluoride by the thermal hydrolysis of fluorosilicic acid, utilized as an alte
  - Precursors: Fluorosilicic acid (HS Code Unknown), Fluorosilicic acid, Sulfuric acid
  - Products: Hydrofluoric acid, Silicon tetrafluoride
  - Rationale: Producing HF from fluorosilicic acid is real (H2SiF6 is decomposed to SiF4 and HF, and sulfuric acid is used to drive off HF from fluorosilicic acid/fluorosilicate routes), so the general process is recognizable. However, the description says 'thermal hydrolysis' while listing sulfuric acid as an input, which is inconsistent, and fluorosilicic acid is listed twice (once with no HS code and once as 282690, which covers fluorosilicates and other fluorine complex salts, not fluorosilicic acid, which is normally 281129). Also, SiF4 is not an HS 281210 item (281210 is acid chlorides of phosphorus); silicon tetrafluoride falls under 281290 or 281129, so the product code is wrong. The hydrofluoric acid code 281111 is correct.

**[INCORRECT (duplicate_precursor_and_water_hs_code_mismatch)]** Industrial production of potassium carbonate by reacting industrially produced potassium hydroxide (
  - Precursors: Compressed or liquefied carbon dioxide (industrial grade), Potassium Hydroxide, Carbon dioxide
  - Products: Potassium Carbonate, Water
  - Rationale: Carbonation of KOH with CO2 to give K2CO3 and water is the standard industrial route and is chemically valid. However, the precursor list redundantly includes carbon dioxide twice (once as 'compressed or liquefied' and once as generic), both under HS 281121. Also, water is listed under HS 285100, which is for distilled/conductivity water and other 'inorganic compounds' in 2851; this is a poor fit for byproduct water, which is normally not a traded commodity. KOH (281520) and K2CO3 (283640) codes are correct.

**[CORRECT]** Haber-Bosch process: Synthesis of anhydrous ammonia by reacting atmospheric nitrogen with hydrogen u
  - Precursors: Nitrogen (compressed or liquefied), Hydrogen (compressed or liquefied)
  - Products: Anhydrous Ammonia (NH3)
  - Rationale: The Haber-Bosch process is a well-documented industrial process that reacts N2 and H2 over an iron-based catalyst at high temperature and pressure to make ammonia. HS 280430 is nitrogen, HS 280410 is hydrogen, and HS 281410 is anhydrous ammonia, so all codes match. The listed inputs and output are correct, and the description of hydrogen sources and air-separation nitrogen is accurate.

**[CORRECT]** Production of boron trifluoride by thermal decomposition of potassium tetrafluoroborate with strong 
  - Precursors: Potassium tetrafluoroborate, Sulfuric acid (industrial grade)
  - Products: Boron trifluoride, Potassium sulfate
  - Rationale: Heating potassium tetrafluoroborate with concentrated sulfuric acid to release BF3 gas is a documented laboratory and industrial route, often with B2O3 or oleum to suppress HF. The listed inputs and products are consistent with it, although the real byproducts may be KHSO4 and HF rather than K2SO4 alone. HS 282690 (complex fluorine salts), 280700 (sulfuric acid) and 281290 (other halides of non-metals) match the named materials, and the missing code for potassium sulfate is not an error.

**[INCORRECT (hs_code_mismatch)]** Production of ferroboron by carbothermic reduction of boric acid (or boron oxide) with carbon as a r
  - Precursors: Boric Acid or Boron Oxide, Iron oxides (industrial grade), Iron or Iron Oxide (feedstock for alloy production)
  - Products: Ferroboron
  - Rationale: Carbothermic production of ferroboron from boron oxide/boric acid, iron oxide and carbon in an electric arc furnace is a documented route yielding higher-carbon ferroboron than the aluminothermic route. However, HS 281000 covers oxides of boron and boric acids, which fits, but HS 282110 is 'iron oxides and hydroxides pigments' (chemical iron oxides), which is not an appropriate code for iron ore or mill scale feedstock used in alloy production (ores would be 2601). The listed inputs are also redundant (two iron oxide entries), and carbon (reductant) is omitted from the inputs. Ferroboron under 720299 (other ferro-alloys) is correct.

**[INCORRECT (hs_code_mismatch)]** Production of ferroboron by aluminothermic or electro-aluminothermic reduction of boric acid or boro
  - Precursors: Boric Acid or Boron Oxide, Ferrous waste and scrap (iron), Aluminium
  - Products: Ferroboron
  - Rationale: Aluminothermic and electro-aluminothermic production of ferroboron from boric acid or boron oxide, aluminium and iron is a real, documented process, and the listed inputs and product are appropriate. HS 281000 (oxides of boron; boric acids), 760110 (unwrought aluminium, not alloyed) and 720299 (other ferro-alloys, which covers ferroboron) all match. However, HS 720430 is specifically waste and scrap of tinned iron or steel, not general ferrous scrap. The generic 'ferrous waste and scrap' would fall under a code such as 720449 or 720410, so this precursor's code is mismatched.

**[INCORRECT (incorrect_inputs_and_hs_codes)]** Production of molten carbon or low-alloy steel via the basic oxygen steelmaking (BOS) process, using
  - Precursors: Liquid pig iron, Liquid pig iron
  - Products: Molten carbon or low-alloy steel (semi-finished steel)
  - Rationale: BOS steelmaking is a real, well-documented process, so it is plausible. However, the precursor list duplicates liquid pig iron and omits scrap steel (HS 7204) and oxygen (HS 280440), which the description names as key feeds. HS 720150 is alloy pig iron, not the standard non-alloy pig iron (720110) used in BOS, and HS 722410 covers steel ingots and other primary forms of other alloy steel, which does not match molten carbon or low-alloy steel (carbon steel ingots or primary forms would be 7206/7207 instead).

**[INCORRECT (input_mismatch_and_hs_code_issue)]** Production of molten carbon or low-alloy steel via the electric arc furnace (EAF) process, using fer
  - Precursors: Ferrous waste and scrap of alloy steel (excluding stainless), Ferrous waste and scrap of alloy steel (excluding stainless)
  - Products: Molten carbon or low-alloy steel (semi-finished steel)
  - Rationale: EAF steelmaking from scrap and/or DRI is a real, well-documented process, so the process is plausible. However, the description says the feed is scrap and/or DRI, yet both precursors are listed as the same alloy-steel scrap (HS 720429), a duplicate entry with no DRI (HS 7203) and no carbon/low-alloy scrap (HS 720449 or 720410), plus no electrodes, oxygen, or lime/flux inputs. Also, HS 722410 covers ingots and other primary forms of other alloy steel, not molten steel as such, and alloy-steel scrap as the sole feed for carbon steel is a poor match, so the code mapping is imprecise.

**[INCORRECT (hs_code_mismatch)]** Collection of raw water from natural sources such as rivers, lakes, or underground aquifers for indu
  - Precursors: Surface water from river (use as string - no HS code), Surface water from lake (use as string - no HS code), Underground aquifer water (use as string - no HS code)
  - Products: Raw water (natural or untreated water)
  - Rationale: Raw water abstraction from rivers, lakes, and aquifers is a real, well-documented process (water intake/abstraction), and the inputs and output are consistent. However, HS 220190 covers 'Waters, other than mineral and aerated waters, not sweetened; ice and snow' under Chapter 22 (beverages), which is intended for packaged or beverage-type waters, not untreated raw water for industrial or municipal use. Raw natural water in bulk is not a standard traded commodity under this code (water in bulk is generally not classified as a traded good, and HS 2201 concerns beverage waters), so the product HS code is a poor match.

**[INCORRECT (hs_code_mismatch)]** Electrolysis of aqueous potassium chloride solution using a membrane or diaphragm cell to produce po
  - Precursors: Potassium chloride, Water
  - Products: Potassium hydroxide, Chlorine, Hydrogen
  - Rationale: Chlor-alkali electrolysis of aqueous KCl in a membrane or diaphragm cell is a real, well-documented process. It yields KOH, Cl2 and H2, and KCl and water are the correct inputs. However, HS 282720 is calcium chloride, not potassium chloride (which falls under 3104 as fertilizer grade or 282739 as other chlorides). The other codes are correct: KOH 281520, chlorine 280110, hydrogen 280410, and water 285100, which is distilled or conductivity water.

**[INCORRECT (wrong_hs_code_and_incomplete_inputs)]** Contact process: Production of sulfuric acid by catalytic oxidation of sulfur dioxide to sulfur trio
  - Precursors: Sulfur, sublimed or precipitated; colloidal sulfur, Sulfur, sublimed or precipitated; colloidal sulfur
  - Products: Sulfuric acid (industrial grade)
  - Rationale: The contact process is a real, well-documented industrial route to sulfuric acid, and HS 280700 correctly covers sulfuric acid (and oleum). However, HS 280200 covers sublimed, precipitated or colloidal sulfur, whereas the description specifies elemental sulfur from natural sources or desulfurization, which is crude/refined sulfur under HS 2503. The input is also listed twice, and the essential oxygen (air) and water inputs are missing, so the input list is inaccurate and incomplete.

**[INCORRECT (hs_code_mismatch_output)]** Mining, beneficiation, and size reduction of natural iron ore (hematite, magnetite, ocher, sienna, u
  - Precursors: Natural iron ore (hematite, magnetite, limonite, ocher, sienna, umber)
  - Products: Iron oxides (industrial grade)
  - Rationale: Mining, beneficiation, and milling of natural iron ore, ocher, sienna, and umber into natural iron oxide pigments is a real, documented process. However, the output is coded HS 282110, which covers synthetic iron oxides and hydroxides (chemical products of Chapter 28). Natural earth pigments such as ocher and sienna are classified under HS 2530.90 (or 3206.49 when prepared as pigments), so the output name and code do not match a natural-pigment product. The input code HS 260111 (non-agglomerated iron ores) fits hematite and magnetite, but it is a poor fit for ocher, sienna, and umber, which are earth pigments rather than iron ore.

**[CORRECT]** Synthetic iron oxide pigment production via the Penniman-Zoph (wet) process: controlled precipitatio
  - Precursors: Ferrous sulfate (copperas), Air/oxygen, Alkali (e.g., sodium hydroxide or ammonia), Ferrous sulfate (copperas)
  - Products: Iron oxides (industrial grade)
  - Rationale: The Penniman-Zoph process is a real industrial route to synthetic iron oxide pigments (especially yellow goethite), using ferrous sulfate, scrap iron, air oxidation and an alkali, followed by filtration, washing and optional calcination to red hematite. HS 283329 covers sulfates of other metals including iron sulfate, and HS 282110 covers iron oxides and hydroxides, so both codes match. Ferrous sulfate is listed twice, which is a redundancy rather than an error, and scrap iron is optional so its omission is acceptable.

**[INCORRECT (hs_code_mismatch)]** Thermal decomposition (dry process) of iron salts (e.g., ferrous sulfate or iron carbonate) in air t
  - Precursors: Ferrous sulfate (copperas), or, Iron carbonate (siderite, where available), Iron(II) carbonate (processed, chemical or technical grade)
  - Products: Iron oxides (industrial grade), Sulfur dioxide (gas byproduct)
  - Rationale: Calcining copperas (FeSO4·7H2O) in air to give red iron oxide (copperas red) with SO2/SO3 release is a real, documented dry-process route, and thermal decomposition of iron carbonate to iron oxide is also plausible. However, the HS codes are problematic: HS 282110 is 'iron oxides and hydroxides' (fine), 283329 is 'other sulfates' (ferrous sulfate is often classified under 283329, acceptable), but 283699 is 'other carbonates' and the precursor list contains a malformed 'or [HS None]' entry as an input, plus missing HS codes for siderite and SO2 (sulfur dioxide has HS 281129). The malformed input list and the unassigned codes make the HS coding inaccurate overall.

**[INCORRECT (missing_precursors)]** Reduction of red iron oxide (hematite) with hydrogen gas to form black iron oxide (magnetite), or ox
  - Precursors: 
  - Products: Iron oxides (industrial grade, specific phase)
  - Rationale: Interconversion of hematite and magnetite (partial reduction with H2 or controlled oxidation of magnetite, as in the Laux/Penniman processes) is a real pigment-related chemistry. However, the precursor list is empty, so the required inputs (hematite/red iron oxide, hydrogen, or magnetite, air/oxygen) are missing. The product HS 282110 (iron oxides and hydroxides) correctly matches iron oxide pigments, but the missing inputs make the record incomplete and incorrect overall.

**[INCORRECT (incorrect_hs_code_for_precursor)]** Industrial production of nitrogen (N2, HS 280430) from atmospheric air can be accomplished primarily
  - Precursors: Atmospheric air (uncompressed, untreated)
  - Products: Nitrogen (compressed or liquefied)
  - Rationale: Cryogenic air separation, PSA and membrane separation are well-established industrial methods for producing nitrogen, and air is the correct feedstock. Nitrogen HS 280430 is correct. However, HS 285100 covers other inorganic compounds (including distilled water and liquid air/compressed air, which in the current HS is 2853 after the 2022 revision), so 285100 is not a valid code for atmospheric air; in HS 2022 liquid air and compressed air are classified under 285300. Untreated atmospheric air is not a traded commodity, so the precursor code is a mismatch.

**[CORRECT]** Sulfuric acid (industrial grade) can be produced and recycled through two distinct but important ind
  - Precursors: Unroasted iron pyrites, Oxygen
  - Products: Sulfuric acid (industrial grade)
  - Rationale: Roasting pyrite to SO2 followed by the contact process (catalytic oxidation to SO3 and absorption) is a well-documented route to sulfuric acid, and oxygen (air) is a required input. HS 250200 (unroasted iron pyrites), HS 280440 (oxygen) and HS 280700 (sulfuric acid; oleum) all match their named materials. The description also mentions spent acid recovery, which is a real, separate process, but the core pyrite-to-acid transformation with the listed inputs and output is chemically sound.

**[INCORRECT (hs_code_mismatch)]** Production of magnesium borate by reacting boric acid with magnesium oxide or magnesium hydroxide in
  - Precursors: Boric Acid, Magnesium oxide (industrial grade, calcined or fused)
  - Products: Magnesium Borate
  - Rationale: Reacting boric acid with MgO or Mg(OH)2 in hot aqueous solution, then filtering and drying, is a recognized route to hydrated magnesium borates. The listed inputs and product are appropriate, and water is an implicit medium. However, HS 281610 covers magnesium hydroxide and peroxide, not magnesium oxide, which falls under HS 2519 (fused or calcined magnesia) or 2519.90. The boric acid code (281000) and magnesium borate code (284020) are plausible.

**[CORRECT]** Comprehensive production of distilled, demineralized, or ultrapure water from raw or pre-treated wat
  - Precursors: Raw Water or Pre-treated Water
  - Products: Distilled, Demineralized, or Ultrapure Water
  - Rationale: Producing high-purity water by combining RO pre-treatment, EDI polishing and distillation is standard industrial practice. Raw or pre-treated water is the correct feed and purified water is the correct output. HS 2201.90 covers ordinary natural water, which is an acceptable proxy for the feed. HS 2851.00 covers distilled, conductivity and similar-purity water, so it matches the product.

**[CORRECT]** Open-pit mining and concentration of natural borate ores (borax, ulexite, kernite, colemanite) utili
  - Precursors: 
  - Products: Natural borates and concentrates (including borax ore)
  - Rationale: Open-pit mining of borate ores (borax, kernite, ulexite, colemanite) using drilling, blasting, loading and crushing, followed by dissolution, settling, crystallization, filtering and drying, is a documented process (e.g., Rio Tinto Boron, Eti Maden). HS 252800 covers natural borates and their concentrates (including borax ore), which matches the product. Having no listed precursors is acceptable for a primary extraction process, since the raw material is the ore in the ground.

**[INCORRECT (wrong_hs_code_and_missing_inputs)]** Production of liquid pig iron (hot metal) via the blast furnace process, where iron ore, coke (deriv
  - Precursors: Iron Ore, Metallurgical coke (blast furnace coke, from bituminous coal), Bituminous coal (for coking, other than anthracite or steam coal)
  - Products: Liquid pig iron, Blast furnace slag
  - Rationale: The blast furnace process is real and correctly described. However, HS 720150 covers alloy pig iron and spiegeleisen, while ordinary hot metal from a blast furnace is non-alloy pig iron (720110 or 720120). The precursor list also omits limestone flux (HS 2521), which the description itself says is charged. Listing both coke and coking coal as inputs to the furnace is questionable, since the coal is only the feedstock for making the coke. The codes for iron ore (260111), coke (270400) and bituminous coal (270112) are otherwise plausible.

**[INCORRECT (hs_code_mismatch_and_input_output_issues)]** Solution mining and evaporation method where water is injected into underground potash deposits to c
  - Precursors: Raw potash ore (sylvinite, halite, carnallite), Raw potash ore (sylvinite, halite, carnallite), Raw potash ore (sylvinite, halite, carnallite)
  - Products: Potassium chloride, Sodium chloride (byproduct)
  - Rationale: Solution mining of potash with brine evaporation/crystallization is a real process (e.g., in Utah and Michigan), so it is plausible. However, the precursor is listed three times as duplicate entries and omits water, a key input, and the ore is not in HS 310490 (that code is 'mineral or chemical fertilizers, potassic, other'; crude natural potassium salts such as sylvinite/carnallite fall under HS 310420 or 310430/3104.20 for potassium chloride fertilizer, and 2530 for some raw minerals). Potassium chloride at 282720 is wrong as well, since 282720 is calcium chloride; potassium chloride is 282710 (ammonium chloride) no, correctly 283 (HS 2827.39/3104.20 for fertilizer grade). Sodium chloride byproduct has no HS code, though 250100 applies.

**[CORRECT]** Production of sublimed sulfur (flowers of sulfur) by subliming and condensing purified elemental sul
  - Precursors: Elemental sulfur (crude or purified)
  - Products: Sulfur, sublimed or precipitated; colloidal sulfur
  - Rationale: Sublimation of sulfur followed by condensation of the vapor to give flowers of sulfur is a well-documented industrial process. The input is elemental sulfur, and HS 2503 covers sulfur of all kinds other than sublimed, precipitated, or colloidal sulfur. The output, sublimed sulfur, falls under HS 2802 (sulfur, sublimed or precipitated; colloidal sulfur), so both codes match their materials.

**[INCORRECT (hs_code_mismatch)]** Industrial production of precipitated sulfur by reacting sulfur dioxide with hydrogen sulfide in wat
  - Precursors: Sulfur dioxide (industrial/commercial gas), Hydrogen Sulfide
  - Products: Sulfur, sublimed or precipitated; colloidal sulfur
  - Rationale: The reaction 2H2S + SO2 -> 3S + 2H2O is the Claus reaction, and in aqueous media it yields fine or colloidal sulfur, so the process and its inputs and outputs are sound. The product code 280200 (sublimed, precipitated or colloidal sulfur) is correct. However, HS 281410 is anhydrous ammonia, not hydrogen sulfide, which is usually classed under 281119 (other inorganic acids). Sulfur dioxide belongs under 281129 (other inorganic oxygen compounds of non-metals), not 281119, so two precursor codes are wrong.

**[CORRECT]** Production of colloidal sulfur by precipitation, involving the repeated precipitation of sulfur from
  - Precursors: Aqueous sulfur compound (hydrogen sulfide, thiosulfate, or polysulfide solution)
  - Products: Sulfur, sublimed or precipitated; colloidal sulfur
  - Rationale: Colloidal sulfur is genuinely produced by precipitation, e.g., acidifying thiosulfate solutions or partially oxidizing H2S in aqueous media, so the process is recognizable. The aqueous sulfur compound precursor is appropriate (its HS code is None because it is a generic solution, not a traded commodity). HS 280200 covers sublimed or precipitated sulfur and colloidal sulfur, matching the product exactly.

**[INCORRECT (missing_precursors)]** Industrial beneficiation of natural iron ore (hematite, magnetite, limonite, ocher, sienna, umber) v
  - Precursors: 
  - Products: Iron ore concentrates (non-agglomerated)
  - Rationale: Iron ore beneficiation (crushing, grinding, magnetic separation, flotation, gravity separation) is a real, well-documented process, and HS 260111 correctly covers non-agglomerated iron ores and concentrates (excluding roasted iron pyrites). However, the precursor list is empty, so the required input of raw iron ore (e.g., HS 260112 is agglomerated, but run-of-mine ore would be classified under 2601) is missing, making the input/output specification incomplete. Additionally, the description includes ocher, sienna, and umber, which are earth pigments generally classified under HS 2530 rather than iron ore, adding minor inconsistency.

**[CORRECT]** Direct reaction of metallic iron (lumps, granules, or ingots, HS 720690) with sulfuric acid (HS 2807
  - Precursors: Iron in primary (commercial) form (lumps, granules, or ingots), Sulfuric Acid
  - Products: Ferrous sulfate (copperas), Hydrogen gas, Hydrogen
  - Rationale: Fe + H2SO4 → FeSO4 + H2 is a real, well-documented reaction, used to make ferrous sulfate from iron scrap or filings and dilute acid. The inputs and outputs are correct, although hydrogen is listed twice (once with no HS code) and the claim that this is a major industrial route overstates it, since most copperas is a byproduct of TiO2 production and steel pickling. The HS codes match: 720690 for iron in primary forms, 280700 for sulfuric acid, 283329 for other sulfates including ferrous sulfate, and 280410 for hydrogen.

**[INCORRECT (hs_code_mismatch)]** Ferrous sulfate (copperas, HS 283329) is produced as a by-product during the pickling of hot-rolled 
  - Precursors: Hot-rolled steel (coils and strips, for pickling), Sulfuric Acid
  - Products: Ferrous sulfate (copperas), Spent acid liquor waste, Residual chemical industry waste
  - Rationale: Sulfuric acid pickling of hot-rolled steel does generate ferrous sulfate (copperas) and spent acid liquor, and the recovery of FeSO4 crystals is well documented. However, HS 382510 is 'municipal waste', not residual waste from the chemical industry (that would fall under 382561/382569). HS 720810 covers hot-rolled coils with patterns in relief, not generic coils for pickling (that would be 7208.36–39), so it is a poor fit. HS 283329 (other sulphates, including iron sulphate) and 280700 (sulfuric acid) are correct. The pickled steel itself is also not listed as an output, though this is a minor omission.

**[INCORRECT (hs_code_mismatch)]** Calcined magnesia (MgO) is produced by thermal decomposition (calcination) of natural magnesite (mag
  - Precursors: Natural magnesite (magnesium carbonate ore)
  - Products: Magnesium oxide (calcined magnesia, industrial grade), Carbon dioxide (emitted as gas)
  - Rationale: Calcining magnesite (MgCO3) in a rotary kiln at roughly 700-1000°C to give MgO and CO2 is a real, well-documented process. The input and output lists are correct, and the magnesite code 251910 (natural magnesium carbonate) is correct. However, HS 281610 covers magnesium hydroxide and peroxide, not magnesium oxide. Calcined, dead-burned or fused magnesia is classified under 2519.90, so the MgO product code is wrong.

**[INCORRECT (hs_code_mismatch)]** Fused magnesia (MgO) is produced by electric arc melting of high purity magnesite or calcined magnes
  - Precursors: Magnesite, Calcined magnesia (MgO, industrial grade)
  - Products: Magnesium oxide (fused magnesia, industrial grade)
  - Rationale: Fused magnesia production by electric arc melting of magnesite or caustic/dead-burned magnesia is a real, well-documented process (temperatures around 2800°C, MgO melts at ~2850°C), and the inputs and outputs are appropriate. However, HS 281610 is 'Hydroxide and peroxide of magnesium', not magnesium oxide; fused magnesia (magnesium oxide) is classified under HS 251990 (fused magnesia/dead-burned sintered magnesia) or 282310-type oxide headings do not apply, so the product code is mismatched. The calcined magnesia precursor lacks an HS code, though it would normally fall under 251990, and magnesite 251910 is also incorrect since magnesite (natural magnesium carbonate) is HS 251910, which is correct.

**[INCORRECT (hs_code_mismatch)]** Beneficiation and flotation of fluorspar ore to produce acid-grade (>97% CaF2) fluorspar concentrate
  - Precursors: Fluorspar ore (unbeneficiated, mined, containing CaF2 and gangue minerals)
  - Products: Acid-grade fluorspar concentrate (>97% CaF2), Gangue tailings (waste/byproducts)
  - Rationale: Froth flotation of fluorspar ore to acid-grade concentrate (>97% CaF2) is a well-documented industrial process, and the ore input and concentrate output are appropriate. HS 252921 (fluorspar, 97% or less CaF2) fits the ore and 252922 (more than 97% CaF2) fits the acid-grade concentrate. However, the tailings code 2621 is only 4 digits and covers other slag and ash (e.g., incineration residues), not mineral processing gangue tailings, so it does not match the material.

**[CORRECT]** Production of ion exchange resins from cross-linked polystyrene beads involves two main processes: (
  - Precursors: Cross-linked polystyrene beads (primary form)
  - Products: Cation Exchange Resin (Polystyrene Sulfonate)
  - Rationale: Sulfonating cross-linked polystyrene (typically styrene-DVB) beads with sulfuric acid is the standard industrial route to strongly acidic cation exchange resin (polystyrene sulfonate). Cross-linked polystyrene beads fit HS 390319 (polystyrene in primary forms, other than expansible), and ion-exchange resins based on polymers of headings 3901-3913 fit HS 391400. The description also mentions an anion-exchange amination route, which would need chloromethylated beads and is not listed as an output. The listed input and output still form a valid pair for the sulfonation route, and the reagent (sulfuric acid) is a minor omission.

**[INCORRECT (incomplete_inputs_and_missing_hs_code)]** Recovery and production of industrial grade compressed or liquefied carbon dioxide (HS 281121) from 
  - Precursors: Ethanol fermentation off-gas (containing CO2)
  - Products: Compressed or liquefied carbon dioxide (industrial grade)
  - Rationale: CO2 recovery from ethanol fermentation off-gas, ammonia/hydrogen SMR off-gas, and natural reservoirs is a real industrial practice, and HS 281121 (carbon dioxide) correctly matches the product. However, the description lists multiple sources (ammonia, hydrogen, geological reservoirs) while the precursor list only includes ethanol fermentation off-gas, so the inputs are inconsistent with the described process; also, purification typically needs energy/utilities and the precursor has no HS code ('Unknown'), which is expected for an off-gas stream but leaves the HS coding incomplete.

**[CORRECT]** Processing of alloy steel-containing products (excluding stainless) to produce ferrous waste and scr
  - Precursors: Obsolete alloy steel products (excluding stainless)
  - Products: Ferrous waste and scrap of alloy steel (excluding stainless)
  - Rationale: Scrapping of alloy steel items (dismantling, shredding, torch cutting, shearing, sorting) to produce alloy steel scrap is a real, well-documented recycling process. HS 7204.29 covers waste and scrap of other alloy steel (excluding stainless, which is 7204.21), so the product code matches. The precursor has no HS code (Unknown), which is acceptable for obsolete articles that lack a specific commodity heading; the description also covers new production scrap, but the listed input of obsolete products is a reasonable representative.

**[CORRECT]** Synthesis of boron nitride nanotubes by chemical vapor deposition (CVD) using boron oxide and ammoni
  - Precursors: Boron oxide, Ammonia
  - Products: Boron nitride nanotubes
  - Rationale: BNNT synthesis via CVD using B2O3 (often generated from B/MgO/FeO 'boron oxide CVD' method, Tang/Golberg) with ammonia at ~1100-1500 °C is a well-documented route. Boron oxide is HS 281000 (oxides of boron), ammonia anhydrous is HS 281410, and BN nanotubes fall reasonably under 285090 (other borides/nitrides, non-carbide binary compounds of nitrogen). Inputs and outputs are consistent; catalysts (e.g., Fe, Mg) are typically used but omission is a minor simplification, not disqualifying.

**[CORRECT]** Mining of fluorspar ore from natural mineral deposits using open-pit or underground mining technique
  - Precursors: 
  - Products: Fluorspar ore (raw mineral, unbeneficiated or mined, typically containing CaF2 and gangue minerals)
  - Rationale: Open-pit and underground mining of fluorspar is a well-documented extraction process with no chemical transformation, and it correctly has no material precursors (the process consumes only explosives, fuel and energy, which are not tracked as inputs). The output, raw run-of-mine fluorspar ore containing CaF2 and gangue, is what this process produces. HS 2529.21 covers fluorspar containing 97% or less CaF2 by weight, which fits unbeneficiated ore.

**[CORRECT]** Beneficiation of raw fluorspar ore by crushing, grinding, gravity separation, and froth flotation (w
  - Precursors: Fluorspar ore (raw mineral, unbeneficiated or mined, typically containing CaF2 and gangue minerals)
  - Products: Fluorspar; containing by weight more than 97 percent of calcium fluoride (acid-spar), Gangue minerals (waste)
  - Rationale: Fluorspar beneficiation by crushing, grinding, heavy-media or gravity separation and froth flotation is a standard industrial practice that produces acid-grade concentrate (>97% CaF2) and gangue tailings. HS 252921 (fluorspar, ≤97% CaF2) reasonably covers raw ore, which typically holds only 30-50% CaF2, and HS 252922 (>97% CaF2) correctly matches acid-spar. The description also mentions metallurgical grade, which would fall under 252921, but listing only acid-spar as the output is a minor simplification and not an error.

**[INCORRECT (hs_code_mismatch)]** Magnesium oxide (MgO) is industrially produced via two primary thermal processes using magnesite (ma
  - Precursors: Magnesite
  - Products: Magnesium oxide (calcined and fused, industrial grade), Carbon dioxide (emitted as gas)
  - Rationale: Calcining magnesite to caustic-calcined MgO with CO2 release, and electrofusion to fused magnesia at about 2800°C or higher (MgO melts near 2852°C), are both real industrial processes, and the inputs and outputs are consistent. HS 251910 (natural magnesium carbonate) and 281121 (carbon dioxide) are correct. HS 281610 covers magnesium hydroxide and peroxide, not the oxide. Magnesia is classified under 251990 (fused or dead-burned magnesia) or 282590 (other oxides, including pure MgO), so the product code is wrong.

**[INCORRECT (hs_code_mismatch)]** Production of boric acid by reacting colemanite (a calcium borate mineral) with sulfuric acid under 
  - Precursors: Sulfuric acid, Colemanite (a calcium borate mineral)
  - Products: Boric acid and boric oxide (including boron trioxide), Gypsum (calcium sulfate dihydrate)
  - Rationale: Reacting colemanite with sulfuric acid at roughly 80-95 °C to give boric acid and gypsum is a well-documented industrial route, notably in Turkey. The inputs and outputs are correct. However, colemanite is a natural calcium borate mineral and belongs under HS 2528 (natural borates and concentrates), not 284019, which covers other sodium tetraborates (borax). The codes for sulfuric acid (280700), boric acid (281000) and gypsum (252010) are correct.

**[CORRECT]** Precipitation of iron(II) carbonate by reaction of iron(II) sulfate with sodium carbonate in aqueous
  - Precursors: Ferrous sulfate, Sodium carbonate (soda ash, chemical grade)
  - Products: Iron(II) carbonate (processed, chemical or technical grade)
  - Rationale: The metathesis FeSO4 + Na2CO3 -> FeCO3 + Na2SO4 is a documented route to synthetic siderite, and it is normally run with air excluded to prevent Fe(II) oxidation. The precursors and product match the stoichiometry, and the sodium sulfate byproduct stays in the filtrate, so leaving it off the output list is a minor omission. The HS codes fit: 2833.29 covers other sulfates including ferrous sulfate, 2836.20 is disodium carbonate, and 2836.99 is other carbonates, which covers iron(II) carbonate.

**[CORRECT]** Destructive distillation (carbonization) of bituminous coal at 900–1100°C in the absence of air to p
  - Precursors: Bituminous coal
  - Products: Metallurgical coke (blast furnace coke, from bituminous coal), Coal tar and coke oven gas (byproducts)
  - Rationale: High-temperature carbonization of coking (bituminous) coal at roughly 900-1100°C in slot coke ovens without air yields metallurgical coke plus coal tar and coke oven gas, a well-documented process. HS 270112 covers bituminous coal, non-agglomerated, and HS 2704 covers coke and semi-coke of coal, so both codes match. The byproducts (coal tar, coke oven gas) are correctly listed without HS codes, though they could be 2706 and 2705 respectively.

**[INCORRECT (hs_code_mismatch_for_in_situ_precursor)]** Mining of raw bituminous coal ore from underground or surface coal seams for use as coking (metallur
  - Precursors: Bituminous coal ore (in situ, unextracted, raw, not marketable)
  - Products: Bituminous coal (for coking, other than anthracite or steam coal)
  - Rationale: Coal mining (extraction, crushing, sizing, transport) of bituminous coking coal is a real, well-documented industrial process, and the product HS 270112 (bituminous coal, non-agglomerated) is a reasonable match. However, the precursor is in situ, unextracted coal, which is not a traded commodity and is not classifiable under HS 270112; assigning a trade code to an unmined resource in the ground is a mismatch. Also, 270112 covers bituminous coal generally (not specifically coking coal), so using the same code for input and output makes the transformation appear circular.

**[INCORRECT (missing_precursors)]** Coal beneficiation (washing and preparation) of mined raw bituminous coal intended for coking to rem
  - Precursors: 
  - Products: Washed/Beneficiated coking coal (metallurgical-grade)
  - Rationale: Coal beneficiation is a real, well-documented industrial process (crushing, screening, dense medium separation, flotation) and is widely used to produce metallurgical coking coal. However, the precursor list is empty, so the key input, raw run-of-mine bituminous coal (HS 270119 or 270112 as mined), and process inputs like water, flotation reagents, and magnetite media are missing. The output HS code 270112 (bituminous coal, non-agglomerated) correctly matches washed coking coal, but the missing input makes the input/output specification incomplete.

**[INCORRECT (hs_code_mismatch)]** Mining of raw potash ore (sylvinite, halite, carnallite) using traditional underground extraction or
  - Precursors: 
  - Products: Raw potash ore (sylvinite, halite, carnallite)
  - Rationale: Underground mining and solution mining of potash ore are real, well-documented processes, and an empty precursor list is acceptable for extraction from a natural deposit (though solution mining uses water). However, HS 310490 is 'other' potassic fertilizers, not crude natural potassium salts. Crude sylvite, carnallite and similar natural potassium salts belong under HS 310410, so the product code is wrong.

**[CORRECT]** Dehydrogenation of ethylbenzene to produce styrene monomer. This is the primary commercial process f
  - Precursors: Ethylbenzene (monomer, commercial grade), Steam
  - Products: Styrene (monomer), Hydrogen
  - Rationale: Catalytic dehydrogenation of ethylbenzene with superheated steam over an iron oxide (potassium-promoted) catalyst at about 600°C is the main commercial route to styrene, and it releases hydrogen as a co-product. The inputs (ethylbenzene, steam) and outputs (styrene, hydrogen) are consistent with this process. The HS codes match their materials: 2902.60 is ethylbenzene, 2902.50 is styrene, and 2804.10 is hydrogen. Steam has no HS code, which is appropriate.

**[INCORRECT (missing_or_duplicated_precursor)]** Alkylation of benzene with ethylene to produce ethylbenzene, which is an upstream process required f
  - Precursors: Benzene (pure, commercial grade), Benzene (pure, commercial grade)
  - Products: Ethylbenzene
  - Rationale: Benzene alkylation with ethylene to ethylbenzene is a real, major industrial process (e.g., zeolite-catalyzed Badger/Mobil processes) and is the precursor step for styrene. However, the inputs list benzene twice and omit ethylene (HS 290121), the essential co-reactant, so the inputs are incorrect. The HS codes themselves are accurate: 290220 is benzene and 290260 is ethylbenzene.

**[INCORRECT (incomplete_and_duplicated_inputs)]** Industrial synthesis of chloromethyl methyl ether (CMME) by the reaction of formaldehyde and methano
  - Precursors: Methanol (methyl alcohol, industrial/commercial grade), Methanol (methyl alcohol, industrial/commercial grade)
  - Products: Chloromethyl methyl ether, Bis(chloromethyl) ether (dangerous byproduct, minimized with process controls)
  - Rationale: The CMME synthesis from formaldehyde, methanol and HCl is real (with bis(chloromethyl) ether as a known carcinogenic byproduct), so the process is plausible. However, the precursor list names methanol twice and omits formaldehyde (or paraformaldehyde, HS 291211/291300) and hydrogen chloride (HS 280610), which are essential inputs. Methanol at HS 290511 and CMME at HS 290919 (other acyclic ethers, halogenated derivatives) are plausible, but the byproduct has no code and the input list is wrong, so the entry is not correct overall.

**[INCORRECT (hs_code_mismatch)]** Convenient laboratory and industrial synthesis of chloromethyl methyl ether (CMME) by reacting dimet
  - Precursors: Dimethoxymethane (methylal), Acetyl chloride (ethanoyl chloride)
  - Products: Chloromethyl methyl ether, Methyl acetate (solution), Methyl acetate
  - Rationale: The reaction of dimethoxymethane with acetyl chloride, catalyzed by a Lewis acid such as ZnBr2, is a documented route to CMME. It gives methyl acetate as the co-product, and the CMME is obtained as a solution in it with very little bis(chloromethyl) ether. The precursor codes fit: 291100 covers acetals, 291590 covers acetyl chloride, and 290919 covers halogenated acyclic ethers like CMME. However, methyl acetate is coded 291531, which is ethyl acetate; methyl acetate belongs under 291539. The output list also duplicates methyl acetate, once as a solution with no code and once as the pure compound.

**[CORRECT]** Production of elemental sulfur from hydrogen sulfide in natural gas and petroleum refining using the
  - Precursors: Hydrogen sulfide, Oxygen (compressed or liquefied)
  - Products: Elemental sulfur (crude or purified)
  - Rationale: The Claus process is a well-documented industrial route for recovering elemental sulfur from H2S in gas processing and refineries. One third of the H2S is burned to SO2, which then reacts with the remaining H2S over catalysts to give sulfur (2H2S + SO2 -> 3S + 2H2O). Oxygen is normally supplied as air, but oxygen-enriched or pure oxygen Claus variants exist, so it is an acceptable input, and the omitted water byproduct is not a key output. The HS codes fit: 281119 (other inorganic acids, covering hydrogen sulfide), 280440 (oxygen) and 250300 (sulfur, other than sublimed, precipitated or colloidal).

**[INCORRECT (hs_code_mismatch)]** Combustion of elemental sulfur in air to produce sulfur dioxide gas. This is the primary commercial 
  - Precursors: Elemental Sulfur, Oxygen
  - Products: Sulfur Dioxide (industrial/commercial gas)
  - Rationale: Burning elemental sulfur in oxygen or air to make SO2 is the standard feedstock step for sulfuric acid plants, and sulfur plus oxygen are the correct inputs. The SO2 product code is wrong: HS 281119 is 'other inorganic acids', while sulfur dioxide falls under 281129 ('other inorganic oxygen compounds of non-metals'). The sulfur code 280200 covers only sublimed, precipitated or colloidal sulfur, whereas bulk sulfur for burning is normally classed under 2503. Oxygen at 280440 is correct.

**[INCORRECT (product_hs_code_mismatch)]** Smelting of iron ore in a blast furnace to produce pig iron, which is then converted by refining pro
  - Precursors: Iron Ore, Bituminous coal (for coking, other than anthracite or steam coal), Limestone flux (used for lime/cement and metallurgical purposes)
  - Products: Pig Iron
  - Rationale: Blast furnace smelting of iron ore with coking coal (converted to coke) and limestone flux is a real, dominant process for making pig iron. The input codes are correct: 260111 is non-agglomerated iron ore, 270112 is bituminous coal, and 252100 is limestone flux. However, 720150 covers alloy pig iron and spiegeleisen, while ordinary blast furnace pig iron falls under 720110 (non-alloy, ≤0.5% P) or 720120 (non-alloy, >0.5% P). The description of 'commercial iron in lumps, granules, ingots' also blurs pig iron with refined primary iron forms (e.g., 7203/7205/7206), which adds to the mismatch.

**[INCORRECT (hs_code_mismatch)]** Refining of pig iron through oxidation (e.g., basic oxygen furnace or open hearth furnace) and casti
  - Precursors: Pig Iron, Oxygen
  - Products: Iron in primary (commercial) form (lumps, granules, or ingots)
  - Rationale: Refining pig iron with oxygen in a BOF or open hearth furnace and casting the result into ingots is a real, well-documented process, although the product is technically non-alloy steel rather than 'commercial iron'. The inputs (pig iron, oxygen) are reasonable, though fluxes such as lime and scrap are omitted, as are the slag and off-gas by-products. HS 720150 covers alloy pig iron and spiegeleisen, not ordinary non-alloy pig iron (720110/720120), so the pig iron code is wrong. Oxygen (280440) and the product code 720690 (non-alloy iron/steel in primary forms) are acceptable.

**[INCORRECT (hs_code_mismatch_product)]** Direct reduction of iron ore using natural gas or syngas to produce direct reduced iron (DRI), which
  - Precursors: Iron Ore, Natural gas (in gaseous state)
  - Products: Iron in primary (commercial) form (lumps, granules, or ingots)
  - Rationale: Gas-based direct reduction (e.g., MIDREX, HYL/Energiron) of iron ore to DRI is a real, well-documented process, and iron ore and natural gas or syngas are valid inputs. The precursor codes are correct (260111 is non-agglomerated iron ore, 271121 is gaseous natural gas). However, the product code 720690 is 'other primary forms' of iron and non-alloy steel and explicitly excludes heading 7203, which covers direct-reduced iron (sponge iron, lumps, pellets, HBI). The DRI product should therefore be 7203 (720310), so the product HS code is mismatched.

**[INCORRECT (hs_code_mismatch)]** Hot rolling of semi-finished steel slabs into hot-rolled steel coils and strips for pickling. The pr
  - Precursors: Semi-finished non-alloy steel slab (rectangular cross-section, <0.25% carbon)
  - Products: Hot-rolled steel (coils and strips, for pickling), Ferrous scale (mill scale)
  - Rationale: Hot rolling of slabs into coil/strip, with mill scale as a byproduct, is a standard steel process. HS 720711 covers rectangular semi-finished steel with width less than twice the thickness (blooms/billets), whereas slabs belong under 720712. HS 720810 is hot-rolled coil with patterns in relief (checker plate), not coil for pickling. Only 261900 (scale/slag from iron and steel manufacture) is correct.

**[INCORRECT (missing_precursor)]** Physical beneficiation of raw ilmenite ore through processes such as crushing, grinding, and classif
  - Precursors: 
  - Products: Ilmenite ore (titanium-iron oxide ore), upgraded concentrate
  - Rationale: Ilmenite beneficiation (crushing, grinding, gravity, magnetic, and flotation separation) is a real, well-documented process, and HS 261400 (titanium ores and concentrates) correctly matches the ilmenite concentrate output. However, the precursors list is empty, so the raw ilmenite ore feed, which is also classified under HS 261400, is missing. A beneficiation process without its ore input is not a complete or valid transformation.

**[INCORRECT (hs_code_mismatch_and_redundant_outputs)]** Chemical leaching of ilmenite ore using sulfuric acid or hydrochloric acid to remove iron, producing
  - Precursors: Sulfuric acid or hydrochloric acid, Water
  - Products: Synthetic rutile, Iron oxide, Iron oxides and hydroxides, Ferrous sulfate (copperas)
  - Rationale: Acid leaching of ilmenite to make synthetic rutile (e.g., Becher, Benelite/hydrochloric leaching) is a real process, and acid plus water are valid inputs. However, HS 280700 covers only sulfuric acid (and oleum), so hydrochloric acid (280610) is mismatched; HS 285100 for water is acceptable only loosely (distilled/conductivity water). The product list is redundant and inconsistent: iron oxide under 260100 is iron ore (not a byproduct oxide), duplicating 282110, and the synthetic rutile code 261400 is titanium ores and concentrates, which is a reasonable but not exact fit. The ilmenite ore input (261400) is also missing from the precursors, making the inputs incomplete.

**[CORRECT]** Mining and physical beneficiation of natural magnesite ore by crushing, screening, and hand-picking 
  - Precursors: 
  - Products: Beneficiated natural magnesite (high-grade lump or powder), Gangue minerals (discarded as waste)
  - Rationale: Crushing, screening, and hand-sorting (sorting) of magnesite ore to upgrade it and reject gangue such as talc, dolomite, and silicates is a well-documented beneficiation practice. The input is the raw ore itself (not a listed precursor, which is acceptable for a mining step), and the outputs of beneficiated magnesite and waste gangue are correct. HS 251910 covers natural magnesium carbonate (magnesite), which matches the product, and gangue correctly has no HS code as a waste.

**[INCORRECT (hs_code_mismatch)]** Magnesium oxide (MgO) is industrially produced from natural magnesite ore (magnesium carbonate, MgCO
  - Precursors: Natural magnesite (magnesium carbonate ore)
  - Products: Magnesium oxide (calcined magnesia, industrial grade), Carbon dioxide (emitted as gas)
  - Rationale: Calcining magnesite (MgCO3) to MgO and CO2 in a kiln is a well-documented industrial process, and fused magnesia is made by electric arc melting as described. The magnesite code HS 251910 (natural magnesium carbonate) is correct. However, HS 281610 covers magnesium hydroxide and peroxide, not magnesium oxide, which falls under 2519.90. HS 281410 is anhydrous ammonia, not carbon dioxide, which is 2811.21.

**[INCORRECT (hs_code_mismatch)]** Production of potassium carbonate by continuous ion exchange, reacting potassium chloride (including
  - Precursors: Potassium Chloride, Ammonium Carbonate
  - Products: Potassium Carbonate, Ammonium Chloride
  - Rationale: The ion-exchange route from KCl and ammonium carbonate to K2CO3 and NH4Cl is chemically coherent, and the inputs and outputs are consistent. However, HS 282720 is calcium chloride, not potassium chloride, which falls under 2827.39 (or 3104.20 for fertilizer-grade potash). The other codes are correct: ammonium carbonate 283699, potassium carbonate 283640, and ammonium chloride 282710.

**[CORRECT]** Steam methane reforming (SMR) of natural gas to produce hydrogen. Methane reacts with steam over a n
  - Precursors: Methane, Steam
  - Products: Hydrogen, Carbon Dioxide
  - Rationale: Steam methane reforming over a nickel catalyst at 700-1100°C is the dominant industrial route to hydrogen. Methane (as natural gas) and steam are the correct feeds, and H2 and CO2 are the main outputs once the water-gas shift step converts CO. The HS codes fit: 271121 is gaseous natural gas, 280410 is hydrogen, and 281121 is carbon dioxide. 285100 covers water (distilled or conductivity water), so it is only a loose match for steam, but acceptable.

**[CORRECT]** Electrolysis of water to produce hydrogen and oxygen. Water is decomposed by an electric current in 
  - Precursors: Water, Potassium Hydroxide
  - Products: Hydrogen, Oxygen
  - Rationale: Alkaline water electrolysis is a well-established industrial process that splits water into hydrogen and oxygen, typically with KOH as the electrolyte. Water and KOH are valid inputs (KOH acts as a recirculating electrolyte, not a consumed reactant), and hydrogen and oxygen are the correct products. The HS codes match: 2851.00 (distilled/conductivity water and other inorganic compounds), 2815.20 (potassium hydroxide), 2804.10 (hydrogen), and 2804.40 (oxygen).

**[INCORRECT (hs_code_mismatch)]** Magnesium oxide (MgO) is produced from natural magnesite (magnesium carbonate, MgCO3) via two primar
  - Precursors: Natural magnesite (magnesium carbonate ore)
  - Products: Magnesium oxide (calcined magnesia, industrial grade), Carbon dioxide (emitted as gas)
  - Rationale: Calcination of magnesite to MgO with CO2 release is a real, well-documented process, and the fused magnesia route is also accurate. HS 251910 is fused/natural magnesium carbonate (magnesite), which is correct for the input, and HS 281610 covers magnesium hydroxide and peroxide, not magnesium oxide (magnesium oxide is HS 251990 for calcined/fused magnesia, or 282560 is not it; 281610 is hydroxide). Also HS 281210 is halides/oxyhalides of non-metals (e.g., chlorides of phosphorus), not carbon dioxide (which is 281121), so both product codes are mismatched.

**[INCORRECT (hs_code_mismatch)]** Thermal reduction of boron trichloride (BCl3) with sodium or potassium metal to yield elemental boro
  - Precursors: Boron trichloride (BCl3), Sodium or Potassium metal (elemental, refined)
  - Products: Refined elemental boron (including isotopically enriched forms), Sodium chloride or potassium chloride (byproduct)
  - Rationale: Reducing BCl3 vapor with molten sodium or potassium to give elemental boron and alkali chloride is a documented route, though it is mainly used for amorphous boron rather than high-purity grades. The precursors and products are chemically sound. However, HS 282710 is ammonium chloride, not sodium or potassium chloride (which fall under 2501 and 3104). HS 284520 covers boron enriched in boron-10, not standard elemental boron (2804.50). HS 280511 is sodium only, so it does not cover potassium (2805.19).

**[INCORRECT (hs_code_mismatch)]** Thermal dehydrogenation of diethylbenzene isomers to produce divinylbenzene (DVB) and hydrogen. This
  - Precursors: Diethylbenzene isomers
  - Products: Divinylbenzene, Hydrogen gas
  - Rationale: Catalytic dehydrogenation of a meta/para diethylbenzene mixture to divinylbenzene and hydrogen is the established commercial route (usually with superheated steam over an iron oxide catalyst), so the process and its inputs and outputs are sound. However, HS 290260 is ethylbenzene, not diethylbenzene, which would fall under the residual cyclic hydrocarbons heading 290290. Divinylbenzene under 290290 is plausible, and hydrogen without a code is acceptable, but the precursor code is wrong.

**[CORRECT]** Production of sodium carbonate via the Solvay process by reacting sodium chloride (brine), limestone
  - Precursors: Sodium chloride (salt, industrial or chemical grade), Limestone, Ammonia
  - Products: Sodium carbonate, Calcium chloride
  - Rationale: The Solvay (ammonia-soda) process is a well-documented industrial route. Brine, limestone (which supplies CO2 and lime) and ammonia (largely recycled, with makeup) yield sodium carbonate, and calcium chloride is the standard byproduct. The HS codes match: 2501.00 salt, 2521.00 limestone, 2814.10 anhydrous ammonia, 2836.20 disodium carbonate, and 2827.20 calcium chloride.

**[INCORRECT (missing_or_invalid_precursor_hs_code)]** Production of sodium carbonate by mining and processing naturally occurring trona ore.
  - Precursors: Trona ore
  - Products: Sodium carbonate
  - Rationale: Producing soda ash from trona (mining, crushing, calcining to sodium carbonate, dissolving, filtering, recrystallizing as monohydrate, and drying) is a well-documented industrial process, for example in Wyoming's Green River Basin. The product code HS 283620 (disodium carbonate) is correct. The precursor trona ore has no HS code (listed as None), although it could be classified under 2530.90 or 2834/2836 as a natural sodium carbonate mineral. Because the input's HS code is missing, the HS code check fails, even though the process itself is accurate.

**[CORRECT]** Production of sodium carbonate by the carbonation of sodium hydroxide (from the chloralkali process)
  - Precursors: Sodium hydroxide (caustic soda, aqueous solution), Carbon dioxide
  - Products: Sodium carbonate
  - Rationale: Carbonating NaOH with CO2 (2NaOH + CO2 -> Na2CO3 + H2O) is a well-documented reaction. It is used industrially, for example to make soda ash from chloralkali caustic or in CO2 capture. HS 281512 is sodium hydroxide in aqueous solution, and HS 283620 is disodium carbonate, so both codes match. CO2 has no code listed (it falls under 281121), but that omission does not make the process wrong, and water as a byproduct is a trivial omission.

**[CORRECT]** Hydrodealkylation of toluene using hydrogen over metal oxide catalyst at high temperature and pressu
  - Precursors: Toluene (pure, commercial grade), Hydrogen
  - Products: Benzene (pure, commercial grade), Methane
  - Rationale: Toluene hydrodealkylation (HDA) with hydrogen to give benzene and methane is a well-documented industrial process (e.g., Hydeal, Detol), typically run at 600-800 °C and 25-60 bar over supported chromium or molybdenum oxide catalysts (thermal versions run without catalyst). HS codes match: 290230 is toluene, 290220 is benzene, and 280410 is hydrogen. Methane has no HS code listed (natural gas is 271111/271121, and pure methane would fall under 290110), but the missing code does not make the entry incorrect.

**[INCORRECT (hs_code_mismatch)]** Toluene disproportionation (TDP), where toluene is converted over a zeolite catalyst to benzene and 
  - Precursors: Toluene
  - Products: Benzene (pure, commercial grade), Xylenes
  - Rationale: Toluene disproportionation over zeolite catalysts (e.g., ZSM-5, as in the Tatoray and MSTDP processes) is a real industrial process that converts toluene to benzene and mixed xylenes, so the process and its inputs and outputs are correct. HS 290230 (toluene) and 290220 (benzene) are correct. HS 290241 covers o-xylene only, not xylenes generally. The mixed xylene isomers this process produces fall under HS 290244, so the xylene code is inaccurate.

**[CORRECT]** Formox process: Industrial production of formaldehyde by catalytic oxidation of methanol using iron-
  - Precursors: Methanol, Oxygen
  - Products: Formaldehyde (industrial/commercial grade), Water
  - Rationale: The Formox process is a well-documented industrial route that oxidizes methanol over iron-molybdenum oxide catalysts at about 250-400°C. The reaction CH3OH + 1/2 O2 → CH2O + H2O matches the listed inputs and outputs, and the oxygen is supplied in practice as air. The HS codes fit: 290511 is methanol, 280440 is oxygen, 291211 is methanal (formaldehyde), and 285390 covers other inorganic compounds, including distilled or conductivity water.

**[CORRECT]** Silver catalyst process: Industrial production of formaldehyde via catalytic oxidation and dehydroge
  - Precursors: Methanol, Oxygen
  - Products: Formaldehyde (industrial/commercial grade), Hydrogen, Water
  - Rationale: The silver-catalyst (BASF-type) process is a well-documented industrial route to formaldehyde. Methanol is partly dehydrogenated (CH3OH → CH2O + H2) and partly oxidized (CH3OH + ½O2 → CH2O + H2O) at roughly 600-720°C. Methanol, oxygen (supplied as air), formaldehyde, and hydrogen are all listed correctly, and water is a real by-product. The HS codes match: 290511 is methanol, 280440 is oxygen, 291211 is methanal, 280410 is hydrogen, and 285390 covers other inorganic compounds, including distilled or conductivity water.

**[CORRECT]** Synthesis of dimethoxymethane (methylal) by reaction of formaldehyde with methanol in the presence o
  - Precursors: Methanol, Formaldehyde
  - Products: Dimethoxymethane (methylal)
  - Rationale: Methylal is made industrially by acid-catalyzed acetalization of formaldehyde with methanol, typically using reactive distillation and an acid catalyst such as an ion-exchange resin. Methanol and formaldehyde are the correct inputs, and water is a byproduct. The HS codes match: 290511 is methanol, 291211 is methanal (formaldehyde), and 291100 covers acetals and hemiacetals, which includes dimethoxymethane.

**[INCORRECT (hs_code_mismatch)]** Production of semi-finished non-alloy steel slab (rectangular, <0.25% carbon) by continuous casting 
  - Precursors: Pig Iron, Ferrous waste and scrap (excluding stainless and alloy steel), Ferrous waste and scrap (general, not stainless or alloy steel)
  - Products: Semi-finished non-alloy steel slab (rectangular cross-section, <0.25% carbon)
  - Rationale: BOF steelmaking from hot metal and scrap followed by continuous casting into slabs is a real, standard route. However, HS 720150 covers alloy pig iron and spiegeleisen, not ordinary non-alloy pig iron (720110/720120). HS 720711 covers rectangular semi-finished products whose width is less than twice the thickness (blooms and billets), whereas slabs belong under 720712. The scrap input is listed twice under the same code, and oxygen and fluxes are not listed.

**[INCORRECT (hs_code_mismatch_product)]** Production of semi-finished non-alloy steel slab (rectangular, <0.25% carbon) by continuous casting 
  - Precursors: Ferrous waste and scrap (excluding stainless and alloy steel), Ferrous remelting scrap ingots
  - Products: Semi-finished non-alloy steel slab (rectangular cross-section, <0.25% carbon)
  - Rationale: Scrap-based EAF steelmaking followed by continuous casting into low-carbon slabs is a standard industrial route, and scrap (HS 720449) and remelting scrap ingots (HS 720450) are reasonable inputs. However, HS 720711 covers rectangular semi-finished products whose width is less than twice the thickness, such as blooms and billets. Slabs have a width of at least twice the thickness and fall under HS 720712, so the product code does not match the named material.

**[CORRECT]** Industrial production of benzene (pure, commercial grade) involves two main processes: (1) Catalytic
  - Precursors: Petroleum Naphtha
  - Products: Benzene (pure, commercial grade)
  - Rationale: Benzene is produced industrially by catalytic reforming of naphtha and by steam cracking, which yields pygas; benzene is then recovered by solvent extraction and distillation. Naphtha is a valid precursor for both routes, and benzene is the intended product. HS 271012 (light petroleum oils, including naphtha) and HS 290220 (benzene) match the named materials. Co-products such as toluene and xylenes and utilities such as hydrogen and catalyst are omitted, but this is a minor simplification.

**[INCORRECT (hs_code_mismatch)]** Industrial-grade magnesium oxide (MgO) production involves two main stages: calcination and electric
  - Precursors: Natural magnesite (magnesium carbonate ore)
  - Products: Magnesium oxide (calcined magnesia, industrial grade), Carbon dioxide (emitted as gas)
  - Rationale: Magnesite calcination to caustic-calcined MgO, with optional electric arc fusion above 2800°C to make fused magnesia, is a real and well-documented industrial route, and CO2 is the expected byproduct. Natural magnesite is correctly coded as HS 251910. However, HS 281610 covers magnesium hydroxide and peroxide, not magnesium oxide, which falls under 2519.90 (calcined or fused magnesia). Carbon dioxide is given only as the 4-digit heading 2811, not its 6-digit code 281121. The outputs also omit the fused magnesia that the description says is produced.

**[CORRECT]** Production of sodium carbonate via Hou's process, where sodium chloride, ammonia, and carbon dioxide
  - Precursors: Sodium chloride (salt, industrial or chemical grade), Ammonia, Carbon dioxide
  - Products: Sodium carbonate (soda ash, chemical grade), Ammonium chloride
  - Rationale: Hou's process (the combined soda process) is a documented industrial method. NaCl, NH3 and CO2 react in aqueous solution to precipitate sodium bicarbonate, which is calcined to soda ash, and NH4Cl is recovered by salting out as a byproduct. All HS codes match their materials: 250100 salt, 281410 anhydrous ammonia, 281121 carbon dioxide, 283620 disodium carbonate, and 282710 ammonium chloride. Water is not listed as an input, but it is a trivial omission.

**[INCORRECT (hs_code_mismatch)]** Industrial extraction and processing of raw natural gas to produce pipeline quality (gaseous state) 
  - Precursors: Crude Oil or Raw Natural Gas
  - Products: Natural gas (in gaseous state), Propane (liquefied), Butanes (liquefied), Sulfur, sublimed or precipitated, Carbon dioxide, Mercury, Nitrogen, Water (waste)
  - Rationale: Natural gas processing (separation, amine treating, dehydration, fractionation) is a real, well-documented process, and the outputs (dry gas, propane, butanes, sulfur, CO2, mercury, nitrogen, water) are plausible. However, the precursor HS 270900 is 'petroleum oils and crude oils' (liquid crude), and raw natural gas would be classified under 2711 (e.g., 271121), so the input code does not match 'raw natural gas'. Also, 280200 covers sublimed/precipitated/colloidal sulfur, whereas recovered Claus sulfur is typically 250300 (sulfur of all kinds), so this code is a poor fit; in addition, 280430 (nitrogen) and 281121 (CO2) are correct, and 280540 (mercury) is correct.

**[INCORRECT (hs_code_mismatch_or_missing)]** Synthesis of methanol by catalytic hydrogenation of carbon monoxide using copper-based catalysts at 
  - Precursors: Carbon monoxide, Hydrogen
  - Products: Methanol (methyl alcohol, industrial/commercial grade)
  - Rationale: Methanol synthesis from CO and H2 over Cu/ZnO/Al2O3 catalysts at about 50-100 bar and 200-300 °C is the standard commercial route, so the process and its inputs and outputs are plausible (CO2 is often co-fed, but CO plus H2 is a valid description). Hydrogen (HS 280410) and methanol (HS 290511) are correct codes. However, carbon monoxide is listed with no HS code ('Unknown'); it has no dedicated 6-digit heading and would fall under 281129 (other inorganic oxygen compounds of non-metals), so the precursor code is missing and cannot be validated.

**[CORRECT]** Production of methanol from synthesis gas (syngas: a mixture of carbon monoxide, carbon dioxide, and
  - Precursors: Synthesis gas (carbon monoxide, carbon dioxide, and hydrogen; syngas, HS Code Unknown)
  - Products: Methanol (methyl alcohol, industrial/commercial grade)
  - Rationale: Methanol synthesis from syngas over Cu/ZnO/Al2O3 catalysts at roughly 50-100 bar and 200-300 °C is a well-documented, dominant industrial process, with syngas typically derived from steam reforming of natural gas. Syngas is a valid input, and methanol is the expected product; the absence of an HS code for syngas is acceptable since it is generally an intermediate not traded as a distinct commodity. HS 290511 correctly corresponds to methanol (methyl alcohol).

**[CORRECT]** Industrial synthesis of acetyl chloride by reaction of acetic anhydride with hydrogen chloride to pr
  - Precursors: Acetic anhydride, Hydrogen chloride (hydrochloric acid)
  - Products: Acetyl chloride, Acetic acid
  - Rationale: Acetic anhydride reacts with HCl to give acetyl chloride and acetic acid (Ac2O + HCl ⇌ AcCl + AcOH). This is a documented route, and the reaction is equilibrium-limited, so it is run with HCl excess or by removing the acetyl chloride. The stoichiometry of inputs and outputs is correct. The HS codes match: 291524 is acetic anhydride, 280610 is hydrogen chloride, 291521 is acetic acid, and 291590 covers acetyl chloride as a halide of a saturated acyclic monocarboxylic acid.

**[CORRECT]** Laboratory synthesis of acetyl chloride by reaction of acetic acid with phosphorus trichloride to pr
  - Precursors: Acetic acid, Phosphorus trichloride
  - Products: Acetyl chloride, Phosphorus acid
  - Rationale: The reaction 3 CH3COOH + PCl3 → 3 CH3COCl + H3PO3 is a classic, well-documented laboratory route to acetyl chloride, with phosphorous acid as the byproduct. The listed inputs and outputs are correct. HS 291521 (acetic acid), 281213 (phosphorus trichloride) and 291590 (acetyl chloride, under other saturated acyclic monocarboxylic acid derivatives) match their materials. Phosphorous acid has no code assigned, which is not a mismatch.

**[CORRECT]** Laboratory synthesis of acetyl chloride by reaction of acetic acid with thionyl chloride to produce 
  - Precursors: Acetic acid, Thionyl chloride
  - Products: Acetyl chloride, Sulfur dioxide, Hydrogen chloride (hydrochloric acid)
  - Rationale: Converting acetic acid to acetyl chloride with thionyl chloride is a standard laboratory method: CH3COOH + SOCl2 → CH3COCl + SO2 + HCl. The inputs and outputs are correct, and the SO2 and HCl byproducts are both listed. The HS codes match the named materials: 291521 acetic acid, 281217 thionyl chloride, 291590 acetyl chloride (other saturated acyclic monocarboxylic acid derivatives), and 280610 hydrogen chloride. Sulfur dioxide has no code listed, which is acceptable since it would fall under 281129.

**[INCORRECT (hs_code_mismatch_input)]** Quarrying and beneficiation of limestone ore to produce limestone flux for lime, cement, and metallu
  - Precursors: Limestone Ore (in situ rock)
  - Products: Limestone flux (used for lime/cement and metallurgical purposes)
  - Rationale: Quarrying, blasting, crushing, screening and washing of limestone to make flux is a real, well-documented process, and in situ limestone as input with limestone flux as output is coherent. The product code HS 252100 (limestone flux; limestone for lime or cement manufacture) is correct. The input code HS 251700 is wrong: heading 2517 covers pebbles, gravel, and broken or crushed stone (macadam, granules), not in situ limestone rock, and 251700 is not a valid 6-digit subheading (2517.10, .20, .30, .41, .49 exist).

**[CORRECT]** Downs process: Electrolysis of molten sodium chloride (with added calcium chloride as flux) to produ
  - Precursors: Sodium chloride, Calcium chloride
  - Products: Sodium or Potassium metal (elemental, refined), Chlorine gas
  - Rationale: The Downs process is a real industrial method: molten NaCl mixed with CaCl2 flux (lowering the melting point from ~800 °C to ~600 °C) is electrolyzed to give liquid sodium at the cathode and chlorine gas at the anode. HS 250100 covers sodium chloride, 282720 covers calcium chloride, and 280511 covers alkali metals (sodium, potassium), so the codes match. Chlorine gas has no code listed, but chlorine is HS 280110; this omission does not make the process description incorrect, and calcium metal is a minor by-product not required to be listed.

**[INCORRECT (wrong_hs_code_and_missing_input)]** Reduction of molten potassium chloride with metallic sodium (Sodium reduction process): Potassium me
  - Precursors: Potassium chloride
  - Products: Sodium or Potassium metal (elemental, refined), Sodium chloride
  - Rationale: Displacement of potassium from KCl by sodium (Na + KCl -> NaCl + K) is a documented process, the Griesheimer/sodium reduction route. However, sodium metal is the reagent and is missing from the precursors. HS 282759 covers other bromides and oxybromides, not chlorides; KCl would be 282739 or 310420. HS 280511 is sodium, whereas potassium falls under 280519. Only NaCl (250100) is coded correctly.

**[CORRECT]** Manufacture of sodium hydroxide (caustic soda, aqueous solution) via electrolysis of purified sodium
  - Precursors: Sodium chloride (purified brine), Water
  - Products: Sodium hydroxide (caustic soda, aqueous solution), Chlorine, Hydrogen
  - Rationale: The chlor-alkali process electrolyzes purified brine (NaCl and water) in membrane, mercury, or diaphragm cells. It yields NaOH solution, chlorine at the anode, and hydrogen at the cathode. The HS codes match: 250100 is salt/NaCl, 285100 covers distilled or conductivity water, 281512 is sodium hydroxide in aqueous solution, 280110 is chlorine, and 280410 is hydrogen.

**[CORRECT]** Separation of toluene from coal tar by distillation. Coal tar is processed to isolate aromatic hydro
  - Precursors: Coal Tar
  - Products: Toluene (pure, commercial grade)
  - Rationale: Toluene is a documented component of the light oil fraction of coal tar, recovered by fractional distillation and refined to commercial grade, although yields are small compared with petroleum reforming. Coal tar (HS 270600) is the correct input and toluene (HS 290230) is the correct product code. The listed input and output are consistent with the described process, and the HS codes match the named materials.

**[CORRECT]** Production of toluene as a byproduct from catalytic reforming of petroleum naphtha. Naphtha is subje
  - Precursors: Naphtha
  - Products: Toluene (pure, commercial grade)
  - Rationale: Catalytic reforming of naphtha produces a reformate rich in benzene, toluene and xylenes (BTX). Toluene is then recovered by solvent extraction and distillation, which is standard refinery and petrochemical practice. Naphtha is properly classed under HS 271012 (light petroleum oils) and toluene under HS 290230. Hydrogen and other co-products are not listed, but this omission does not make the process implausible.

**[CORRECT]** Methylation of benzene with methanol over a solid acid catalyst at elevated temperature to produce t
  - Precursors: Benzene, Methanol
  - Products: Toluene (pure, commercial grade)
  - Rationale: Toluene alkylation of benzene with methanol over zeolite solid acid catalysts (e.g., ZSM-5) is a documented process, and has been piloted or practiced when toluene supply is short. Benzene (HS 290220), methanol (HS 290511), and toluene (HS 290230) are all correct codes. Water is a byproduct and is not listed, but this omission is minor and does not make the process implausible.

**[INCORRECT (hs_code_mismatch_precursor)]** Production of ferrous remelting scrap ingots by melting sorted ferrous scrap (iron or steel) in a fu
  - Precursors: Ferrous waste and scrap; of iron or steel
  - Products: Ferrous remelting scrap ingots
  - Rationale: Melting sorted ferrous scrap in induction or electric arc furnaces and casting it into remelting ingots is a real, well-documented process, and scrap is the appropriate input. The product code HS 720450 (remelting scrap ingots of iron or steel) is correct. However, HS 720430 covers only waste and scrap of tinned iron or steel, not general ferrous scrap. Generic sorted scrap would fall under 720449 (other ferrous waste and scrap) or a specific code such as 720410, 720421 or 720429, so the precursor code does not match its generic name.

**[INCORRECT (incomplete_or_inconsistent_outputs)]** Industrial-grade magnesium oxide (MgO) is produced from natural magnesite (magnesium carbonate, MgCO
  - Precursors: Natural magnesite (magnesium carbonate ore)
  - Products: Magnesium oxide (calcined magnesia, industrial grade), Carbon dioxide (emitted as gas)
  - Rationale: Calcination of magnesite (MgCO3 → MgO + CO2) is a real, well-documented process, and fusing MgO in an electric arc furnace to make fused magnesia is also real (typically above 2800°C). However, the description covers two steps while the listed outputs only include calcined magnesia and CO2. Fused magnesia, the product of step 2, is missing, and the electric energy input and fusing step are not reflected in the inputs and outputs. The HS codes are plausible: 251910 is natural magnesium carbonate (magnesite), and 281610 is magnesium oxide (HS 2816 covers hydroxide and peroxide of magnesium, with 281610 being the hydroxide and peroxide subheading), and CO2 has no code listed. Actually, 281610 is 'Hydroxide and peroxide of magnesium', and magnesium oxide is 2519.90, so the product code is a mismatch.

**[INCORRECT (hs_code_mismatch)]** Production of ferrous waste and scrap (excluding stainless and alloy steel) involves the collection,
  - Precursors: Obsolete iron and steel articles (unprocessed, non-alloy, non-stainless)
  - Products: Ferrous waste and scrap (excluding stainless and alloy steel)
  - Rationale: Scrap processing (collection, sorting, cutting, shredding, baling) of obsolete iron and steel is a real, well-documented recycling operation, and the input/output pairing is sensible. However, HS 720449 is 'Other ferrous waste and scrap' (not in bales/shredded/turnings categories), which does not fully cover the described shredded and baled output, and the process describes items like shredded scrap that fall under 720441/720449 depending on form. The precursor 'obsolete articles' has no HS code assigned (Unknown), so the HS coding is incomplete and imprecise.

**[INCORRECT (hs_code_mismatch)]** Industrial-grade magnesium oxide (MgO) is produced from natural magnesite (magnesium carbonate, MgCO
  - Precursors: Natural magnesite (magnesium carbonate ore)
  - Products: Magnesium oxide (calcined magnesia, industrial grade), Carbon dioxide (emitted as gas)
  - Rationale: Calcining magnesite in a kiln to give MgO and CO2, followed by electrofusion to make fused magnesia, is a real and well-documented industrial process. The inputs and outputs are sensible. The magnesite code 251910 is correct. However, 281610 covers magnesium hydroxide and peroxide, not magnesium oxide, which falls under 2519.90. Carbon dioxide is 281121, whereas 281710 is zinc oxide, so two of the three HS codes are wrong.

**[INCORRECT (incorrect_hs_code_and_missing_precursors)]** Production of sodium chloride (salt, industrial or chemical grade, HS 250100) can occur via three pr
  - Precursors: 
  - Products: Sodium chloride (salt, industrial or chemical grade)
  - Rationale: The three routes (rock salt mining, solar evaporation, vacuum pan evaporation) are real, well-documented methods for producing sodium chloride. However, the precursor list is empty even though the process description names raw inputs such as rock salt, seawater/brine, and energy or purification reagents. The HS code 250100 is real, covering salt and pure sodium chloride, but it is a heading-level code with no 6-digit subheading, and the 'industrial or chemical grade' label does not match its actual scope, which also includes table salt and denatured salt. This weakens the code accuracy.
