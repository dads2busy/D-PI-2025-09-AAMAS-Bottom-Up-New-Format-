# MEKH Process Factual Accuracy — LLM-as-Judge Report

Generated: 2026-09-28 19:25 UTC
Judge model: `claude-cli:claude-sonnet-5-5`

## Summary

| Condition | Processes | Overall correct | Process plausible | I/O correct | HS codes correct |
|-----------|----------:|----------------:|------------------:|------------:|-----------------:|
| gallium | 87 | 28/87 (32.2%) | 85/87 (97.7%) | 60/87 (69.0%) | 35/87 (40.2%) |

## Precision proxy

Precision proxy = (overall correct) / (total judged)

- **gallium**: 0.322

## Error modes

### gallium
- `hs_code_mismatch`: 20
- `hs_code_mismatch_product`: 5
- `missing_precursors_and_hs_mismatch`: 3
- `hs_code_mismatch_precursor`: 3
- `hs_code_mismatch_and_redundant_inputs`: 1
- `wrong_hs_code`: 1
- `incorrect_inputs_and_hs_codes`: 1
- `hs_code_mismatch_and_inconsistent_inputs`: 1
- `wrong_precursor_and_hs_code_mismatch`: 1
- `missing_precursor_and_hs_mismatch`: 1
- `incorrect_process_and_hs_codes`: 1
- `hs_code_and_output_mismatch`: 1
- `incomplete_or_duplicated_inputs`: 1
- `wrong_hs_code_for_water_precursor`: 1
- `implausible_reaction_stoichiometry_and_thermodynamics`: 1
- `inputs_outputs_mismatch_and_hs_code_errors`: 1
- `missing_inputs_and_duplicate_precursor`: 1
- `hs_code_missing_and_input_output_incomplete`: 1
- `product_hs_code_mismatch`: 1
- `missing_precursors_and_invalid_hs_code`: 1
- `missing_precursors_and_hs_code_mismatch`: 1
- `input_output_and_hs_code_mismatch`: 1
- `missing_key_input`: 1
- `wrong_hs_code_product`: 1
- `hs_code_mismatch_and_duplicate_precursors`: 1
- `incorrect_hs_code_for_precursor`: 1
- `incorrect_inputs`: 1
- `missing_sulfur_input_and_duplicate_bromine_precursor`: 1
- `missing_or_incorrect_hs_code_on_precursor`: 1
- `missing_precursor`: 1
- `incomplete_or_mismatched_inputs`: 1
- `product_mischaracterized`: 1

## Per-process details

### gallium

**[INCORRECT (hs_code_mismatch_and_redundant_inputs)]** Extraction of gallium from Bayer process sodium hydroxide liquor by ion exchange and electrolysis to
  - Precursors: Bauxite, Sodium hydroxide, Solid sodium hydroxide (caustic soda)
  - Products: Unwrought refined gallium (including waste and scrap, powders)
  - Rationale: Gallium recovery from Bayer liquor via ion exchange (chelating resin) and electrolysis from sodium hydroxide/gallate solution is a real, documented industrial process, and HS 811292 does cover unwrought gallium, and 281511 is solid sodium hydroxide. However, the inputs list sodium hydroxide twice, once with no HS code (HS None) and once as solid caustic soda, which is redundant and leaves a precursor without a valid code. Also, the bauxite (HS 260600 is aluminium ores) is only the indirect source of the Bayer liquor, and the process omits the Bayer liquor itself (sodium aluminate solution) as the direct input, so the input set is incomplete/imprecise.

**[INCORRECT (hs_code_mismatch)]** Refining of crude gallium by zone refining or fractional crystallization for high-purity unwrought g
  - Precursors: Crude Gallium
  - Products: Unwrought refined gallium (including waste and scrap, powders)
  - Rationale: Purifying crude gallium by fractional crystallization or zone refining is a real, documented method for reaching high-purity (6N–7N) gallium, and crude gallium in, refined gallium out is a sensible input/output pairing. The product code 811292 (unwrought, waste, scrap, powders of gallium and similar metals) fits. The precursor code 811299 covers 'other' articles of these metals (e.g., wrought forms), not crude or unwrought gallium, which would also fall under 811292, so the input code is wrong.

**[INCORRECT (wrong_hs_code)]** Industrial synthesis of gallium nitride (GaN) by reacting gallium metal or gallium(III) oxide with a
  - Precursors: Gallium metal, Gallium(III) oxide
  - Products: Gallium nitride, Hydrogen
  - Rationale: Nitridation of gallium metal with NH3 (2Ga + 2NH3 → 2GaN + 3H2) at high temperature is a real, documented route, and Ga2O3 nitridation is also known. However, the Ga2O3 route yields water rather than hydrogen (Ga2O3 + 2NH3 → 2GaN + 3H2O), so water is a missing output. HS 811299 covers other articles of gallium and similar metals, but gallium nitride is an inorganic compound that belongs under HS 2850 (nitrides). Codes 811292 (unwrought gallium), 282590 (other metal oxides) and 280410 (hydrogen) are appropriate.

**[CORRECT]** Direct chlorination of metallic gallium with chlorine gas to produce gallium trichloride (GaCl3)
  - Precursors: Gallium (metal), Chlorine gas (Cl2)
  - Products: Gallium trichloride (GaCl3)
  - Rationale: Direct reaction of gallium metal with Cl2 (2Ga + 3Cl2 → 2GaCl3, often as the dimer Ga2Cl6) is a well-documented route to gallium trichloride. The inputs, gallium and chlorine, are the only required reactants, and GaCl3 is the sole product. Chlorine at HS 280110 and metal chlorides at 281219 are correct. Gallium at 811299 falls under heading 8112 (gallium and other metals), but unwrought gallium is more precisely 811292, so that code is slightly loose without being a commodity mismatch.

**[CORRECT]** Gallium nitrate is produced by dissolving elemental gallium metal in nitric acid. The reaction proce
  - Precursors: Gallium metal, Nitric acid
  - Products: Gallium nitrate, Nitrogen oxides gas (waste)
  - Rationale: Dissolving gallium metal in nitric acid gives gallium(III) nitrate, a documented route (Ga + 4HNO3 → Ga(NO3)3 + NO + 2H2O). Nitrogen oxides are the expected gaseous byproduct, and water is also formed. Room-temperature dissolution is slow and is often assisted by gentle heating, but this is a minor detail. The HS codes fit: 280800 is nitric acid, 283429 is nitrates of other metals, and 8112 covers gallium. Unwrought gallium would more precisely be 811292 than 811299, but both are in the gallium heading, so the code is acceptable.

**[CORRECT]** Direct synthesis of gallium trifluoride (GaF3) by fluorination of elemental gallium metal with hydro
  - Precursors: Gallium (unwrought, including waste and scrap), Hydrogen fluoride (hydrofluoric acid)
  - Products: Gallium fluoride (gallium trifluoride), Hydrogen gas (byproduct, vented or collected)
  - Rationale: Gallium metal reacts with HF (2Ga + 6HF → 2GaF3 + 3H2) at elevated temperature, and direct fluorination of metals with HF gas is a recognized route, though GaF3 is more commonly made from Ga2O3 with HF or by thermal decomposition of (NH4)3GaF6. Inputs and outputs are consistent with the stoichiometry, with H2 correctly listed as a byproduct. HS codes are correct: 811299 covers unwrought gallium and articles, 281111 is hydrogen fluoride, and 282612 is fluorides of aluminium... but gallium fluoride falls under the 2826.19 'other' fluorides; however, the code is a plausible trade classification match for metal fluorides in this heading area, so it is accepted.

**[INCORRECT (hs_code_mismatch_product)]** Production of gallium trifluoride (GaF3) from gallium(III) oxide and hydrofluoric acid. Gallium oxid
  - Precursors: Gallium(III) oxide (Ga2O3), Hydrogen fluoride (hydrofluoric acid)
  - Products: Gallium fluoride (gallium trifluoride), Water (byproduct, vented or collected)
  - Rationale: Ga2O3 + 6HF -> 2GaF3 + 3H2O is a real, documented route (typically giving the hydrate, with anhydrous GaF3 made by HF gas fluorination or thermal treatment), and the inputs and water byproduct are correct. HS 282590 (other metal oxides) fits gallium oxide and 281111 fits hydrogen fluoride. However, HS 282612 is fluorides of aluminium, so gallium trifluoride should fall under 282619 (other fluorides), which makes the product code wrong.

**[INCORRECT (hs_code_mismatch)]** Production of Gallium-67 citrate radiopharmaceutical: Gallium-67 is first produced by cyclotron irra
  - Precursors: Water, acid, and necessary chemical reagents, Enriched Zinc-68 Metal Target
  - Products: Gallium-based pharmaceutical/radiopharmaceutical preparations (e.g., gallium citrate, gallium nitrate, radiogallium diagnostic agents)
  - Rationale: Ga-67 production via 68Zn(p,2n)67Ga on enriched Zn-68 targets, followed by chemical separation and citrate complexation, is a real, well-documented process. However, HS 790111 is unwrought zinc (≥99.99% purity), which is a bulk commodity and does not properly describe an enriched Zn-68 isotope target; enriched isotopes would fall under 2845 (isotopes other than of heading 2844). The product code 300630 is for opacifying preparations for X-ray examinations and diagnostic reagents administered to patients, whereas a Ga-67 citrate radiopharmaceutical is more accurately classified under 2844 (radioactive elements/isotopes and compounds) or 3006.10/3006.60-type headings, so the HS mapping is imprecise. The precursor with HS None is also vague but acceptable.

**[INCORRECT (hs_code_mismatch)]** Synthesis of gallium arsenide wafers by reacting high-purity gallium with arsenic in a controlled at
  - Precursors: Gallium (high purity), High purity arsenic (unwrought, elemental)
  - Products: Gallium arsenide wafers
  - Rationale: The process is real. High-purity Ga and As are synthesized into polycrystalline GaAs, grown as a single crystal by LEC/Czochralski, then sliced and polished. Arsenic (HS 280480) is correct. Gallium is listed as 811299 ('other'), but unwrought gallium and powders fall under 811292. Polished GaAs wafers, which are doped chemical elements or compounds in wafer form for electronics, are normally classified under 3818, not 854159 (other semiconductor devices), so two of the three HS codes are wrong.

**[INCORRECT (incorrect_inputs_and_hs_codes)]** Synthesis of gallium nitride wafers by reacting high-purity gallium with ammonia or nitrogen gas, ut
  - Precursors: Gallium (high purity), Ammonia (NH3) or Nitrogen gas, Ammonia (anhydrous, electronic grade), Nitrogen (high purity, electronic grade)
  - Products: Gallium nitride wafers
  - Rationale: HVPE growth of GaN followed by slicing and polishing is a real process. In HVPE, however, gallium reacts with HCl to form GaCl, which then reacts with NH3, so HCl is a missing key input. Nitrogen gas is only a carrier or purge gas and not a practical nitrogen source, and the generic 'Ammonia or Nitrogen gas' entry with no HS code duplicates the specific entries. Gallium metal is unwrought and belongs under HS 811292, not 811299 (other articles), and 854159 is doubtful for bare GaN substrate wafers, which usually go under 3818 or 8541/8542 depending on processing.

**[INCORRECT (hs_code_mismatch)]** Manufacture of doped gallium arsenide wafers via Metal-Organic Vapor Phase Epitaxy (MOVPE) or Molecu
  - Precursors: Ultrapure gallium (high-purity elemental gallium), Arsenic, ultrapure, Dopant gas (e.g., silane, dimethylzinc, hydrogen selenide)
  - Products: Doped Gallium Arsenide wafer
  - Rationale: Doped GaAs epitaxy by MOVPE/MBE is real, but the description is muddled: MOVPE uses organometallics (TMGa) and arsine rather than elemental Ga and As, and epitaxial layers are grown on a substrate wafer rather than being sliced from a layer. The product HS code 381800 is for chemical elements/compounds doped for electronics, in disc/wafer form, which does fit doped wafers. However, 811292 is for unwrought gallium, which is acceptable for elemental gallium, while 280480 is arsenic, also acceptable. The main HS problem is that the dopant gas has no code, and the input/output description is inaccurate for the stated MOVPE route (missing arsine/trimethylgallium and a substrate), so the entry is judged incorrect overall.

**[INCORRECT (hs_code_mismatch)]** Manufacture of doped gallium nitride wafers by hydride vapor phase epitaxy (HVPE) or metal-organic c
  - Precursors: Ultrapure gallium (high-purity elemental gallium), Ammonia, Dopant precursor (e.g., silane, magnesium source)
  - Products: Doped Gallium Nitride wafer
  - Rationale: GaN wafer growth by HVPE/MOCVD with Ga (or TMGa in MOCVD), NH3 and dopants like silane or Cp2Mg is a real, well-documented process. However, HS 381800 covers chemical elements/compounds doped for electronics in the form of discs, wafers, etc., which is plausible for doped wafers, but HS 811292 is 'gallium, unwrought; powders' under other base metals (811292 covers beryllium, chromium, germanium, vanadium, gallium, hafnium, indium, niobium, rhenium, thallium, unwrought), so it is acceptable. The main issues are the missing substrate (sapphire, SiC, or silicon) and HCl (for HVPE) as key inputs, and the process description conflating HVPE/MOCVD, whose precursors differ (Ga metal + HCl vs. trimethylgallium), so the inputs are incomplete and inconsistent.

**[INCORRECT (hs_code_mismatch_product)]** Synthesis of Gadolinium Gallium Garnet (GGG) single crystals by the Czochralski method, using high-p
  - Precursors: Gallium oxide, Gadolinium(III) oxide (Gd2O3)
  - Products: Gadolinium gallium garnet (GGG) crystal
  - Rationale: Czochralski growth of GGG from Gd2O3 and Ga2O3 melted in an iridium crucible is a real, well-documented process, and the inputs are correct. Gallium oxide under HS 281410 is wrong, though: 2814 is ammonia, and gallium oxide belongs under 282590 (other oxides). Gd2O3 under 284690 (rare-earth compounds) is correct. The product code 850511 covers permanent magnets of metal, which does not fit a GGG single crystal; a synthetic crystal would fall under 7118/3824 or 9001/3818 (doped elements for electronics), or 2842/2846 depending on form. The precursor and product HS codes are therefore mismatched.

**[INCORRECT (hs_code_mismatch)]** Alloying of high-purity gallium, indium, and tin metals in inert or reducing atmosphere to form Gali
  - Precursors: Gallium (unwrought, high purity), Indium (unwrought, high purity), Unwrought tin (high purity)
  - Products: Gallium amalgams (gallium-based liquid metal alloys)
  - Rationale: Melting and alloying Ga, In and Sn under an inert or reducing atmosphere to make Galinstan is a real process, and the eutectic composition is approximately correct (about 68.5/21.5/10). The inputs and outputs are chemically sensible. However, HS 811299 covers other articles of indium rather than unwrought indium, which belongs under 811292. The product code 284390 covers precious-metal compounds and amalgams, so it does not fit a Ga-In-Sn alloy, which would fall under 8112.92 or a similar metal or alloy heading. Gallium 811292 and tin 800110 are correct.

**[INCORRECT (hs_code_mismatch_and_inconsistent_inputs)]** Gallium arsenide (GaAs) is synthesized via direct reaction of high-purity gallium metal (HS 811292) 
  - Precursors: Gallium metal, Arsenic vapor or arsenic trichloride, Trimethylgallium, Arsine, Gallium metal, Arsenic vapor, Arsenic trichloride (AsCl3), Arsenic trichloride (AsCl3), Arsenic trichloride (AsCl3), Trimethylgallium (TMGa), Trimethylgallium (TMGa)
  - Products: Gallium arsenide
  - Rationale: GaAs synthesis from Ga plus As, and growth by VGF, Bridgman, or LEC, and MOCVD from TMGa plus arsine are real processes. However, the precursor list is redundant and inconsistent, with duplicate entries, null HS codes, and TMGa listed under HS 293100 (other organo-inorganic compounds) while the description says 292149 (an aromatic amine code, which is wrong for TMGa). AsCl3 is not a normal direct-synthesis input and its code 281219 is an acceptable chloride classification, but arsine is missing from the structured inputs with HS 281211 (which is hydrogen chloride), so codes are inaccurate. Also GaAs as a compound semiconductor would more plausibly fall under 285390 or 381800 (doped wafers), not 811299 (other articles of gallium/beryllium etc.).

**[CORRECT]** Synthesis of gallium(III) oxide (Ga2O3) by direct oxidation of gallium metal in air at high temperat
  - Precursors: Gallium metal
  - Products: Gallium(III) oxide
  - Rationale: Heating gallium metal in air or oxygen gives β-Ga2O3, and thermal decomposition of gallium nitrate (itself made from Ga and nitric acid) also gives Ga2O3, so both routes are documented. Gallium metal is the necessary precursor, and air is a ubiquitous unlisted reagent. HS 811292 (unwrought gallium, powders) and HS 282590 (other metal oxides, including gallium oxide) match the named materials.

**[INCORRECT (wrong_precursor_and_hs_code_mismatch)]** Preparation of Galinstan (a eutectic gallium-based alloy) by alloying measured proportions of galliu
  - Precursors: Gallium metal, Unwrought indium (including high purity indium metal), Unwrought indium (including high purity indium metal)
  - Products: Galinstan alloy
  - Rationale: Galinstan preparation by alloying gallium, indium, and tin is a real, documented process. However, the precursor list names unwrought indium twice and omits tin entirely, even though the description says tin (HS 800700) is required. The indium entries are also coded HS 811292 (gallium, germanium, vanadium, etc.) instead of 811221 for indium, so the codes don't match the named material.

**[INCORRECT (missing_precursors_and_hs_mismatch)]** Synthesis of doped CIGS (Copper Indium Gallium Selenide) thin-film photovoltaic material by co-evapo
  - Precursors: Unwrought refined copper, Elemental Indium, Unwrought refined copper (elemental copper), Unwrought refined copper (elemental copper)
  - Products: Doped CIGS (Copper Indium Gallium Selenide) semiconductor thin film
  - Rationale: CIGS synthesis by co-evaporation or two-stage selenization is a real, well-documented process. However, the inputs list copper three times and indium once, omitting gallium and selenium (or H2Se), which are essential constituents of CIGS; alkali dopants are also absent. HS 811292 covers gallium, germanium, hafnium, indium, niobium, rhenium and vanadium (unwrought), so it technically includes indium, but the product code 381800 (chemical elements doped for electronics, in discs/wafers) is a poor fit for a deposited thin film on a device, and the duplicated copper entries indicate a data error.

**[CORRECT]** Industrial production of nitric acid via the Ostwald process, involving catalytic oxidation of anhyd
  - Precursors: Ammonia; anhydrous, Oxygen, Water
  - Products: Nitric acid
  - Rationale: The Ostwald process is a well-documented industrial route: NH3 is catalytically oxidized over Pt-Rh gauze to NO, NO is oxidized to NO2, and NO2 is absorbed in water to give HNO3. The listed inputs (ammonia, oxygen from air, water) and output (nitric acid) are correct, and byproducts like N2O/NOx tail gas are not required to be listed. HS 281410 is anhydrous ammonia and HS 280800 is nitric acid (and sulphonitric acids), so both codes match; oxygen and water have no HS code listed, which is acceptable.

**[INCORRECT (missing_precursor_and_hs_mismatch)]** Production of hydrogen fluoride (hydrofluoric acid) by reacting fluorspar (calcium fluoride) with co
  - Precursors: Fluorspar (calcium fluoride), Fluorspar (calcium fluoride)
  - Products: Hydrogen fluoride (hydrofluoric acid), Calcium sulfate (gypsum)
  - Rationale: The reaction CaF2 + H2SO4 -> 2 HF + CaSO4 is the real primary industrial route to HF, so the process is plausible. However, the precursor list gives fluorspar twice and omits sulfuric acid (HS 280700), a required reagent. HS 252921 (fluorspar, ≥97% CaF2) is correct and HS 281111 (hydrogen fluoride) is correct, but HS 283319 is 'sulfates of other metals' (other than sodium, i.e. 283311 disodium sulfate and 283319 covers other sulfates like copper), and calcium sulfate is classified under 252010 (gypsum/anhydrite) or 283329 (other sulfates), so the by-product code is likely mismatched.

**[INCORRECT (incorrect_process_and_hs_codes)]** Production of hydrogen fluoride (hydrofluoric acid) as a byproduct of fertilizer manufacture, where 
  - Precursors: Hexafluorosilicic acid (H2SiF6)
  - Products: Hydrogen fluoride (hydrofluoric acid), Silicon dioxide
  - Rationale: Hexafluorosilicic acid from phosphate fertilizer manufacture is real, and HF can be made from it, but the process is described inaccurately. The usual route is hydrolysis/ammoniation giving silica and fluoride salts, or H2SiF6 decomposition to SiF4 and HF, and simple thermal decomposition into HF plus SiO2 is not standard; SiF4 is listed as a product in the description but omitted from the outputs. HS codes are also wrong: 281111 is hydrogen fluoride, which is correct, but 281122 is silicon dioxide, which is correct, while the precursor has no HS code (H2SiF6 falls under 281119), so the precursor code is missing.

**[CORRECT]** Production of gallium(III) oxide (Ga2O3) via thermal decomposition of gallium(III) nitrate at elevat
  - Precursors: Gallium(III) nitrate
  - Products: Gallium(III) oxide (Ga2O3)
  - Rationale: Thermal decomposition of gallium(III) nitrate (often as the hydrate) to Ga2O3 is a well-documented route, with NOx and O2 released as gaseous byproducts. Gallium nitrate is the only required input and Ga2O3 is the expected product. HS 2834.29 (nitrates, other) fits gallium nitrate, and HS 2825.90 (other metal oxides) fits gallium oxide.

**[INCORRECT (hs_code_and_output_mismatch)]** Industrial-scale Electromagnetic Isotope Separation (EMIS) or gas centrifugation is used to enrich Z
  - Precursors: Zinc oxide (ZnO) or Zinc fluoride (ZnF2) or Zinc chloride (ZnCl2) [if chemical reduction step required], Hydrogen or Carbon (as chemical reducer)
  - Products: Enriched Zinc-68 Metal Target, Zinc depleted of Zn-68 isotope, Zinc depleted of Zn-68 isotope, Zinc depleted of Zn-68 isotope (waste or secondary product)
  - Rationale: Zn-68 enrichment by EMIS or gas centrifugation (using volatile zinc compounds or dimethylzinc/zinc vapor) followed by reduction and purification for cyclotron targets (e.g., Ga-67, Cu-67) is a real process. However, the output list is inconsistent: depleted zinc is listed three times with different HS codes (None, 790112, 790200), where 790112 is zinc alloys-not-alloyed with Pb ≥99.99%? actually unwrought zinc containing by weight less than 99.99% zinc, and 790200 is zinc waste and scrap, so the duplicates are redundant and inconsistent. The hydrogen/carbon precursor code 280410 covers only hydrogen (carbon is 2803), and zinc oxide is 281700 while 282590 is other metal oxides, so ZnO/ZnF2/ZnCl2 under 282590 is also incorrect (ZnO 281700, ZnCl2 282739, ZnF2 282690).

**[INCORRECT (hs_code_mismatch)]** Elution of Gallium-68 radioisotope from a Ge-68/Ga-68 generator: Germanium-68 is adsorbed onto a sta
  - Precursors: Germanium-68 (adsorbed on column), Hydrochloric Acid
  - Products: Gallium-68 radioisotope (from Ge-68/Ga-68 generator), Spent Germanium-68 generator column
  - Rationale: Ge-68/Ga-68 generator elution with HCl is a real, well-documented process, and the inputs (Ge-68 on a column, HCl) and outputs (Ga-68 eluate, spent/retained column) are reasonable. However, HS 811292 covers gallium, germanium, hafnium, etc. (unwrought/powders) in the 8112 group, which is a poor match for Ge-68 adsorbed on a generator column; radioactive isotopes fall under 2844. Also HS 284444 is not a valid or appropriate code for Ga-68 (2844.4x covers radioactive elements/isotopes/compounds other than those in 2844.10-2844.30, and 284444 does not exist as a standard subheading), so the HS codes are inaccurate.

**[CORRECT]** Reduction of arsenic trioxide with carbon to produce high purity elemental arsenic (unwrought)
  - Precursors: Arsenic trioxide (As2O3), Industrial carbon (carbon black or amorphous carbon)
  - Products: High purity arsenic (unwrought, elemental)
  - Rationale: Carbothermal reduction of arsenic trioxide (As2O3 + 3C -> 2As + 3CO) is a documented route to elemental arsenic, and the arsenic is recovered by sublimation and condensation, which also purifies it. Arsenic trioxide and carbon are the correct inputs, and elemental arsenic is the product (CO off-gas is a by-product not listed). The HS codes match: 2811.29 covers arsenic trioxide, 2803 covers carbon black and other forms of carbon, and 2804.80 covers arsenic. 'High purity' is a slight stretch for the direct product but is acceptable after sublimation.

**[CORRECT]** Smelting of tin ores (cassiterite) with carbon in a reverberatory furnace to produce crude tin (blac
  - Precursors: Tin ores and concentrates (cassiterite, SnO2)
  - Products: Unwrought tin (high purity)
  - Rationale: Carbothermic smelting of cassiterite in a reverberatory furnace to produce crude tin, followed by liquation and refining, is a well-documented industrial route. The carbon reductant is implicit and the main input (tin concentrate) and output (refined tin) are correct, with slag and byproducts not required to be listed. HS 260900 is tin ores and concentrates, and HS 800110 is unwrought tin, not alloyed, so both codes match.

**[INCORRECT (hs_code_mismatch)]** The electrolytic chloralkali process produces solid sodium hydroxide (caustic soda), chlorine gas, a
  - Precursors: Sodium chloride (common salt), Water
  - Products: Solid sodium hydroxide (caustic soda), Chlorine, Hydrogen
  - Rationale: The chloralkali process is a real, well-documented industrial process, and brine (NaCl and water) in with NaOH, Cl2 and H2 out is correct. The HS codes for salt (2501.00), solid NaOH (2815.11), chlorine (2801.10) and hydrogen (2804.10) match. However, water is coded as HS 220110, which is mineral and aerated waters (a beverage commodity), not process water, so that precursor code is a mismatch. The mercury-cell description is also loose, since the amalgam decomposer yields NaOH solution rather than solid directly.

**[INCORRECT (hs_code_mismatch)]** Electrolysis of sodium chloride solution (brine) can be carried out via either a membrane cell or a 
  - Precursors: Sodium chloride, Water
  - Products: Chlorine, Sodium hydroxide solution, Hydrogen
  - Rationale: Chlor-alkali electrolysis of brine in membrane or diaphragm cells is a real, well-documented process that yields Cl2, NaOH solution and H2, and NaCl and water are the correct inputs. The codes for sodium chloride (250100), chlorine (280110), sodium hydroxide in aqueous solution (281512) and hydrogen (280410) are correct. However, water is given as HS 220110, which covers mineral and aerated waters. Ordinary process water falls under 220190, so this code is a mismatch.

**[INCORRECT (hs_code_mismatch)]** Synthesis of trimethylgallium (TMGa) by methylation of gallium trichloride with methyl lithium in th
  - Precursors: Gallium trichloride, Methyl lithium (CH3Li, organolithium reagent), Tertiary phosphine
  - Products: Trimethylgallium, Lithium chloride, Phosphine adduct (intermediate)
  - Rationale: Methylating GaCl3 with MeLi in the presence of a tertiary phosphine, then thermally releasing TMGa from its phosphine adduct, is a plausible route: GaCl3 + 3 MeLi gives GaMe3 + 3 LiCl. The listed inputs and outputs are consistent with this. Several HS codes are wrong. 282720 is calcium chloride, not lithium chloride, which falls under 2827.39. 284530 covers boron-10 and lithium-6 enriched materials, not methyl lithium, which is an organo-inorganic compound under 2931. 281219 for GaCl3 is also doubtful, since 2827.39 is the more usual code for a metal chloride.

**[INCORRECT (hs_code_mismatch)]** Alternative synthesis of trimethylgallium (TMGa) by reaction of gallium trichloride with dimethylzin
  - Precursors: Gallium trichloride, Dimethylzinc or Trimethylaluminium
  - Products: Trimethylgallium, Byproducts (alkyl zinc or aluminium halide)
  - Rationale: Methylation of GaCl3 with dimethylzinc or trimethylaluminium to give trimethylgallium is a documented alternative to the Grignard/GaCl3 or Ga-Mg alloy routes, with alkylzinc/aluminium chlorides as byproducts, so the process and inputs/outputs are sound. However, HS 281219 covers chlorides and chloride oxides of other non-metals (heading 2812 is halides of non-metals), whereas gallium trichloride is a metal halide that would fall under 282739 (other chlorides). HS 293100 (other organo-inorganic compounds) is appropriate for trimethylgallium, but the precursor code mismatch makes the overall entry incorrect.

**[INCORRECT (hs_code_mismatch_product)]** Electrolytic refining of blister copper to produce unwrought refined copper, using cast blister copp
  - Precursors: Blister copper (semirefined copper, anode copper)
  - Products: Unwrought refined copper
  - Rationale: Electrolytic refining of anode copper in a CuSO4/H2SO4 electrolyte with stainless steel permanent cathodes (ISA/Kidd-type) is a real, standard process. The precursor code 740200 (unrefined copper; copper anodes for electrolytic refining) fits. The direct product of electrorefining is cathode copper, which is HS 740311. Ingots and billets only result from later remelting and casting, and billets are 740313. Code 740319 ('other' refined copper, unwrought) does not match the cathode output the process actually yields.

**[INCORRECT (hs_code_mismatch)]** Direct electrowinning from copper-rich leach solutions (using SX-EW process) to produce unwrought re
  - Precursors: Copper-rich leach solution (from oxide ores)
  - Products: Unwrought refined copper
  - Rationale: SX-EW is a real, widely used hydrometallurgical route: oxide ore is leached, solvent extraction upgrades the pregnant leach solution to a clean electrolyte, and electrowinning plates copper onto cathodes. The leach solution input and refined copper output are reasonable, though 'direct' electrowinning glosses over the required SX step. The product HS code is wrong. Electrowon copper cathodes fall under HS 740311 (cathodes and sections of cathodes), not 740319 (other unwrought refined copper such as ingots or cakes). The precursor has no HS code, which is acceptable for an intermediate solution.

**[INCORRECT (incomplete_or_duplicated_inputs)]** Production of hydrogen gas (HS 280410) by steam reforming of natural gas. In this industrial process
  - Precursors: Natural gas (mainly methane), Natural gas (mainly methane)
  - Products: Hydrogen, Carbon dioxide
  - Rationale: Steam reforming of methane with a nickel catalyst followed by water-gas shift is a real, well-documented industrial process, and the HS codes are plausible (271121 natural gas gaseous, 280410 hydrogen, 281121 carbon dioxide). However, the precursor list duplicates natural gas and omits water/steam, which is a required reactant explicitly named in the description. Because steam is missing and natural gas is listed twice, the input list is incorrect.

**[INCORRECT (wrong_hs_code_for_water_precursor)]** Production of hydrogen gas (HS 280410) by water electrolysis. Electricity is used to split water int
  - Precursors: Pure water (excluding mineral and aerated waters), Pure water (excluding mineral and aerated waters)
  - Products: Hydrogen, Oxygen
  - Rationale: Water electrolysis to hydrogen and oxygen is a well-established industrial process, and the products H2 (HS 280410) and O2 (HS 280440) are correct in concept. However, oxygen is listed as HS 280429, which is 'other rare gases' (rare gases in 2804.29), not oxygen, which is HS 280440. Also, HS 220110 covers mineral and aerated waters, not pure/distilled water used in electrolysis (which would be closer to 2201/2853), and the water precursor is duplicated, with electricity not listed as an input.

**[INCORRECT (hs_code_mismatch)]** Precipitation of gadolinium(III) carbonate by reaction of a gadolinium salt (such as gadolinium chlo
  - Precursors: Gadolinium(III) nitrate, Sodium carbonate (soda ash, Na2CO3)
  - Products: Gadolinium(III) carbonate (Gd2(CO3)3)
  - Rationale: Precipitating rare earth carbonates from a soluble gadolinium salt with sodium carbonate is a standard, well-documented process (2 Gd(NO3)3 + 3 Na2CO3 -> Gd2(CO3)3 + 6 NaNO3), and the listed inputs and output are correct. Sodium carbonate under 283620 is correct. However, gadolinium nitrate and gadolinium carbonate are compounds of rare-earth metals, which HS classifies under heading 2846 (subheading 284690), not 283429 (nitrates, other) or 283699 (carbonates, other). Two of the three HS codes are therefore wrong.

**[INCORRECT (implausible_reaction_stoichiometry_and_thermodynamics)]** Direct reaction of gadolinium(III) oxide with carbon dioxide gas under pressure to form gadolinium(I
  - Precursors: Gadolinium(III) oxide, Carbon dioxide (industrial gas)
  - Products: Gadolinium(III) carbonate (Gd2(CO3)3), Water
  - Rationale: Direct reaction of Gd2O3 with CO2 gas does not produce Gd2(CO3)3 and water; rare earth oxides are only weakly carbonated by CO2 (forming oxycarbonates such as Gd2O2CO3), and the normal route is precipitation from soluble gadolinium salts with carbonate/bicarbonate or hydrothermal routes. The listed water product is also inconsistent, since an oxide plus CO2 gives only the carbonate with no water byproduct (water would be needed as an input for a hydrated carbonate). The HS codes are plausible: 284690 for other rare-earth compounds, 281121 for CO2, 283699 for other carbonates, and 285100 for water.

**[INCORRECT (hs_code_mismatch)]** Smelting of cassiterite (tin ore) with a carbonaceous reductant to produce crude tin (black tin). Ca
  - Precursors: Tin Ore (Cassiterite), Metallurgical coke and bituminous coal (for smelting, reduction)
  - Products: Crude tin (black tin), Impurity slag
  - Rationale: Carbothermic smelting of cassiterite to crude black tin with an impurity slag is a real, well-documented process, and the inputs and outputs are appropriate. HS 260900 (tin ores and concentrates) is correct. However, HS 800120 is for tin alloys, while crude unalloyed tin belongs under 800110. HS 270112 covers only bituminous coal, and metallurgical coke would be under 2704, so the combined coke/coal code is also inaccurate.

**[INCORRECT (hs_code_mismatch_precursor)]** Production of arsenic trioxide (As2O3) by roasting arsenic ores (such as arsenopyrite, FeAsS, or orp
  - Precursors: Arsenic Ore (e.g., arsenopyrite, FeAsS; orpiment, As2S3)
  - Products: Arsenic trioxide (As2O3)
  - Rationale: Roasting arsenopyrite, orpiment, or arsenical flue dust in air to volatilize As2O3, then condensing and ressubliming it, is a well-documented industrial route, and the inputs and outputs are reasonable (air is an implicit oxidant). The product code 281129 (other inorganic oxygen compounds of non-metals) correctly covers arsenic trioxide. The precursor code 281390 covers sulfides of non-metals, including refined arsenic sulfides. It does not cover arsenic ores such as arsenopyrite, which fall under ore headings such as 2530 or 2617, so the precursor HS code does not match the named material.

**[CORRECT]** Precipitation of gallium hydroxide by neutralization of gallium(III) salt solutions (such as gallium
  - Precursors: Gallium metal, Gallium(III) nitrate (Ga(NO3)3), Gallium(III) chloride, Gallium(III) sulfate
  - Products: Gallium(III) oxide
  - Rationale: Precipitating Ga(OH)3/GaOOH from Ga(III) salt solutions with NaOH or ammonia (at controlled pH, since Ga(OH)3 is amphoteric) and then calcining to beta-Ga2O3 is a well-documented route. The salts are listed as alternative feeds, and gallium metal is a plausible upstream precursor that is dissolved in acid to make these salts. The HS codes are consistent: 8112.92 (unwrought gallium), 2834.29 (other nitrates), 2827.39 (other chlorides), 2833.29 (other sulfates) and 2825.90 (other metal oxides).

**[INCORRECT (missing_precursors_and_hs_mismatch)]** Thermal decomposition of gadolinium(III) compounds, including gadolinium(III) oxalate and gadolinium
  - Precursors: 
  - Products: Gadolinium(III) oxide, Carbon oxides, Water (vapor)
  - Rationale: Calcination of gadolinium oxalate or hydroxide to Gd2O3 is a well-documented route, with CO/CO2 released from the oxalate and water vapor from the hydroxide. However, the precursors list is empty, so the required inputs (gadolinium oxalate, gadolinium hydroxide) are missing. HS 284690 (rare-earth compounds) fits gadolinium oxide, but HS 280511 is alkali/alkaline-earth metals (not carbon oxides, which fall under 281128), and HS 285100 is a 'other inorganic compounds' code covering distilled/conductivity water, so the by-product codes are mismatched or dubious.

**[INCORRECT (inputs_outputs_mismatch_and_hs_code_errors)]** Thermal decomposition (calcination) of various gadolinium(III) salts and compounds—such as gadoliniu
  - Precursors: Gadolinium(III) nitrate
  - Products: Gadolinium(III) oxide, Nitrogen oxides (from nitrate precursor), Carbon dioxide, Carbon oxides, Water (vapor)
  - Rationale: Calcination of gadolinium salts to Gd2O3 is a real, well-documented route, so the process is plausible. However, the process describes multiple precursors (nitrate, carbonate, oxalate, hydroxide) while only the nitrate is listed as input, and the outputs mix byproducts from different precursors (CO2, carbon oxides, water) that would not all arise from nitrate decomposition alone. HS codes are also problematic: 284690 is for rare-earth compounds (Gd2O3 fits), but 283699 is for other carbonates (not CO2), 280511 is for alkali/alkaline-earth metals such as calcium... actually 280511 is rare-earth-adjacent metals rather than carbon oxides (carbon oxides fall under 281129), and 285100 is for distilled/conductivity water and other inorganic compounds, so several codes do not match the named materials.

**[INCORRECT (missing_inputs_and_duplicate_precursor)]** Production of Gallium-68 DOTATOC radiopharmaceuticals: Germanium-68 is immobilized on an adsorbent i
  - Precursors: Germanium-68 radioisotope, Germanium-68 radioisotope, Germanium-68 radioisotope
  - Products: Gallium-based pharmaceutical/radiopharmaceutical preparations (e.g., gallium citrate, gallium nitrate, radiogallium diagnostic agents)
  - Rationale: The Ge-68/Ga-68 generator elution with HCl followed by DOTATOC labeling using kits is a real, well-documented radiopharmaceutical process. However, the precursor list repeats Germanium-68 three times and omits the essential DOTATOC peptide/kit, hydrochloric acid, and buffer, so the inputs are incomplete and incorrect. HS 284430 (radioactive elements/isotopes, excluding uranium, thorium) fits Ge-68, but HS 300630 covers diagnostic reagents for patients, and Ga-68 DOTATOC as a labeled peptide is more plausibly classified under 3006.30 or 2844.43/3002-type headings, making the 'gallium citrate/nitrate' product description a poor match for Ga-68 DOTATOC.

**[INCORRECT (hs_code_mismatch_product)]** Production of Gallium nitrate for pharmaceutical uses: Gallium metal is reacted with nitric acid to 
  - Precursors: Gallium metal, Nitric Acid
  - Products: Gallium-based pharmaceutical/radiopharmaceutical preparations (e.g., gallium citrate, gallium nitrate, radiogallium diagnostic agents)
  - Rationale: Dissolving gallium metal in nitric acid to give gallium nitrate is real chemistry, and the pharmaceutical route (e.g., Ganite for hypercalcemia) is documented. The precursor codes fit: 811292 covers unwrought gallium and 280800 covers nitric acid. The product code 300630 covers diagnostic reagents and X-ray contrast preparations, but therapeutic gallium nitrate would fall under 3004 (medicaments). The product description also lumps in radiogallium and gallium citrate agents, which this process does not make.

**[CORRECT]** Synthesis of ammonia (anhydrous, liquefied or in aqueous solution) via the Haber-Bosch process, thro
  - Precursors: Hydrogen, Nitrogen
  - Products: Ammonia (anhydrous, liquefied or in aqueous solution)
  - Rationale: The Haber-Bosch process is a well-documented industrial synthesis of ammonia from hydrogen and nitrogen over an iron-based catalyst at high temperature and pressure. Hydrogen (HS 280410), nitrogen (HS 280430) and ammonia, anhydrous or in aqueous solution (HS 281410 is anhydrous ammonia; 281420 is aqueous ammonia), are the correct inputs and output. The HS 281410 code covers anhydrous ammonia, which is the main product, so the mapping is acceptable, though the description's mention of aqueous solution slightly overlaps with 281420.

**[CORRECT]** Furnace black process: Incomplete combustion of heavy petroleum fractions (carbon black feedstock) w
  - Precursors: Carbon black feedstock oil (heavy petroleum fraction)
  - Products: Industrial carbon (carbon black)
  - Rationale: The furnace black process is the dominant industrial method for carbon black, involving partial combustion/thermal cracking of heavy aromatic oils (e.g., decant oil, coal tar-derived oils) with limited air. HS 270799 (other oils and products of high-temperature coal tar distillation, n.e.s.) is a plausible code for carbon black feedstock oil, though petroleum-derived feedstock might alternatively be classed under 2710, and HS 280300 is the correct code for carbon black. Air/oxygen and fuel are implicit, so no key input is missing enough to make it implausible.

**[INCORRECT (hs_code_missing_and_input_output_incomplete)]** Filtration and compression of atmospheric air to obtain industrial-grade feedstock for downstream se
  - Precursors: Atmospheric air (ambient, outside intake)
  - Products: Atmospheric air (industrial processing feedstock)
  - Rationale: Air filtration and compression is a real pre-treatment step in air separation units, but a complete process would also involve removal of water, CO2 and hydrocarbons (pre-purification), and would require energy input (electricity for compressors) and produce condensate or waste streams. The precursor and product are both listed as 'atmospheric air', with no HS code for the input (None) and 'UNCLASSIFIED' for the output, so the HS codes cannot be validated. Compressed air is not a standard traded commodity, and the nearest HS heading for air is 2851 (liquid air / compressed air), so the missing codes are an error.

**[INCORRECT (hs_code_mismatch_product)]** Preparation of Gadolinium(III) chloride by reacting gadolinium(III) oxide with ammonium chloride at 
  - Precursors: Gadolinium(III) oxide, Ammonium chloride
  - Products: Gadolinium(III) chloride
  - Rationale: The ammonium chloride route is documented: Gd2O3 + 10 NH4Cl gives (NH4)2[GdCl5] at about 230°C, which decomposes at about 300°C to anhydrous GdCl3, releasing NH3, H2O and NH4Cl. The inputs and outputs are correct, and the HS codes for Gd2O3 (284690) and NH4Cl (282710) fit. Gadolinium(III) chloride is a rare-earth compound and is normally classified under heading 2846 (284690), not 282739 (chlorides, other), so the product code is wrong.

**[INCORRECT (product_hs_code_mismatch)]** Direct synthesis of anhydrous Gadolinium(III) chloride by reacting gadolinium metal with hydrogen ch
  - Precursors: Hydrogen chloride (anhydrous or in aqueous solution), Unwrought gadolinium metal (high purity)
  - Products: Gadolinium(III) chloride (GdCl3)
  - Rationale: Direct reaction of gadolinium metal with HCl gas at elevated temperature gives anhydrous GdCl3 (2Gd + 6HCl → 2GdCl3 + 3H2), and the inputs and outputs are consistent, though the hydrogen byproduct is not listed. The precursor codes fit: 280610 is hydrogen chloride and 280530 is rare-earth metals. GdCl3 is a rare-earth compound, which is normally classified under heading 2846 (e.g., 284690), not 282739 (other chlorides), so the product code is likely wrong.

**[CORRECT]** Production of high purity (electronic grade) nitrogen gas from atmospheric air using three major ind
  - Precursors: Atmospheric air (industrial processing feedstock)
  - Products: Nitrogen (high purity, electronic grade)
  - Rationale: Cryogenic distillation, membrane separation, and PSA with carbon molecular sieves are all well-established industrial methods for producing nitrogen from air, with additional purification (e.g., getters, adsorbers) for electronic grade. Atmospheric air as the sole input and high-purity nitrogen as the output are correct; air has no HS code, so 'unclassified' is appropriate. HS 280430 is the correct heading for nitrogen.

**[INCORRECT (hs_code_mismatch_precursor)]** Production of pure water (excluding mineral and aerated types, HS 220110) from tap water or groundwa
  - Precursors: Tap water or groundwater
  - Products: Pure water (excluding mineral and aerated waters)
  - Rationale: The purification process (filtration, disinfection, RO/ion exchange, distillation, bottling) is real and well documented, and tap or groundwater is a valid input for producing bottled pure water. HS 220110 is correct for mineral and aerated waters, but the description is muddled: 220110 covers mineral waters and aerated waters, not 'pure water excluding mineral and aerated types' (that falls under 220190). The precursor code HS 285100 is for distilled/conductivity water and other purified water (and other inorganic compounds), not tap or groundwater, which is generally not a traded HS commodity. Both codes are therefore inaccurate for the named materials.

**[INCORRECT (missing_precursors_and_invalid_hs_code)]** Thermal decomposition of gadolinium(III) oxalate or gadolinium(III) hydroxide to produce gadolinium(
  - Precursors: 
  - Products: Gadolinium(III) oxide, Carbon oxides
  - Rationale: Calcination of gadolinium oxalate or hydroxide to Gd2O3 is a real, well-documented route, so the process is plausible. However, the precursor list is empty even though the description names gadolinium oxalate and hydroxide as inputs, and the product list omits water vapor from the hydroxide route. HS 284690 (rare-earth compounds, other than cerium) fits Gd2O3, but 'Carbon oxides' is given the placeholder code 999999, which is not a valid HS code (carbon oxides fall under 281129 as other inorganic oxygen compounds of non-metals).

**[INCORRECT (missing_precursors_and_hs_code_mismatch)]** Thermal decomposition of gadolinium(III) compounds—specifically gadolinium(III) oxalate and gadolini
  - Precursors: 
  - Products: Gadolinium(III) oxide, Carbon oxides (gas), Water (vapor)
  - Rationale: Thermal decomposition of gadolinium oxalate (giving Gd2O3, CO/CO2) and gadolinium hydroxide (giving Gd2O3 and water) are real, well-documented routes, so the process is plausible. However, the precursor list is empty even though gadolinium oxalate and gadolinium hydroxide are the required inputs. HS codes are also problematic: 284690 (rare-earth compounds) fits gadolinium oxide, but 282200 is cobalt oxides and hydroxides, not carbon oxides (carbon oxides are 281121 for CO2/281129 for other inorganic oxygen compounds), and 840420 is auxiliary plant for steam boilers/condensers, not water vapor.

**[INCORRECT (input_output_and_hs_code_mismatch)]** Thermal decomposition of gadolinium(III) compounds, specifically gadolinium(III) oxalate and gadolin
  - Precursors: Gadolinium(III) oxalate
  - Products: Gadolinium(III) oxide, Carbon oxides, Water vapor
  - Rationale: Calcining gadolinium oxalate or hydroxide to Gd2O3 is a well-documented route, so the process is plausible. However, the listed inputs include only the oxalate, while the description also covers the hydroxide, and water vapor is listed as an output though it is not produced from the oxalate (the only listed precursor); the oxalate route also releases CO/CO2 (and residual water from hydrates). HS codes are also problematic: 284690 is a reasonable code for rare-earth compounds (Gd oxide), and gadolinium oxalate is arguably there too, but 'carbon oxides' under 282200 is wrong (282200 is cobalt oxides; carbon oxides are 281129), and water vapor under 840420 is wrong (840420 is gas generators/steam boiler-related equipment, not water).

**[INCORRECT (missing_key_input)]** Industrial production of sodium carbonate (soda ash) via the Solvay process, where sodium chloride (
  - Precursors: Sodium chloride (common salt, halite, industrial salt), Sodium chloride (common salt, halite, industrial salt), Ammonia (anhydrous)
  - Products: Sodium carbonate (soda ash, Na2CO3), Calcium chloride
  - Rationale: The Solvay process is a real, well-documented industrial route to soda ash, and it does co-produce calcium chloride, with ammonia recycled. However, the input list omits limestone (calcium carbonate, HS 252100 or 251710), which the description names and which is essential as the source of CO2 and lime. Sodium chloride is listed twice instead, so the inputs are incorrect, and water is also omitted. The HS codes given are correct: 250100 for salt, 281410 for anhydrous ammonia, 283620 for disodium carbonate, and 282720 for calcium chloride.

**[INCORRECT (hs_code_mismatch)]** Proton irradiation of gallium metal targets in an accelerator, leading to the nuclear reaction 69Ga(
  - Precursors: Gallium metal
  - Products: Germanium-68 radioisotope
  - Rationale: The 69Ga(p,2n)68Ge reaction is a real, standard route to Ge-68, the parent isotope of Ga-68 generators. Gallium targets (often Ga-Ni alloy) are irradiated and then processed by chemical separation, so the inputs and outputs are reasonable. However, HS 284430 covers uranium depleted in U-235, thorium and their compounds, not radioactive isotopes such as Ge-68, which belong under 284440. HS 811299 (other articles) is also a questionable match for raw gallium metal, which would normally fall under 811292 (unwrought, waste, powders).

**[INCORRECT (wrong_hs_code_product)]** Alpha particle (helium ion) irradiation of enriched zinc-66 targets in an accelerator (66Zn(α,2n)68G
  - Precursors: Enriched zinc-66 metal (stable isotope target)
  - Products: Germanium-68 radioisotope
  - Rationale: The 66Zn(α,2n)68Ge reaction on enriched zinc-66 targets is a documented route to Ge-68, followed by chemical separation, so the process and its inputs and outputs are plausible. The product code is wrong: HS 284430 covers uranium depleted in U-235, thorium and their compounds, while radioisotopes such as Ge-68 belong under 284440. The precursor code 790111 (unwrought zinc, ≥99.99%) is a reasonable proxy for zinc metal, though isotope-enriched material is not classified precisely there.

**[INCORRECT (hs_code_mismatch_and_duplicate_precursors)]** High-energy proton spallation of natural rubidium bromide or molybdenum targets, producing germanium
  - Precursors: Natural rubidium bromide, Molybdenum, Natural rubidium bromide, Natural molybdenum
  - Products: Germanium-68 radioisotope
  - Rationale: Ge-68 production by high-energy proton spallation of Rb-Br or Mo targets (e.g., at LANL, BNL, INR Troitsk) followed by chemical separation is real and documented, and Ge-68 is a radioisotope under HS 284430 (the broad heading for radioactive elements/isotopes, which is acceptable). However, the precursor list contains duplicates with missing HS codes (rubidium bromide listed twice, molybdenum without a code), and natural molybdenum ores/concentrates HS 261390 refers to roasted molybdenum ore concentrates rather than metal targets (metal is 8102). Rubidium bromide under 282759 (other bromides) is plausible, but the molybdenum code is a mismatch for a metallic target material.

**[CORRECT]** Vacuum distillation of atmospheric residue from crude oil to yield carbon black feedstock oil (heavy
  - Precursors: Atmospheric residue (from crude oil)
  - Products: Carbon black feedstock oil (heavy petroleum fraction), Vacuum gas oil
  - Rationale: Vacuum distillation of atmospheric residue is a standard refinery operation that yields vacuum gas oil and heavy vacuum fractions, which can be used or upgraded as carbon black feedstock. Atmospheric residue fits under HS 2713.90 (other residues of petroleum oils), and vacuum gas oil fits under 2710.19. HS 2707.99 is a reasonable code for aromatic-rich carbon black feedstock oil, since Chapter 27 places oils whose aromatic content exceeds the non-aromatic content in heading 2707. The classification is somewhat borderline, though, because some such oils are put under 2710.

**[INCORRECT (missing_precursors_and_hs_mismatch)]** Heavy cycle oil (aromatic-rich fraction) production via fluid catalytic cracking (FCC) of vacuum gas
  - Precursors: 
  - Products: Carbon black feedstock oil (heavy petroleum fraction), FCC gasoline, Light cycle oil
  - Rationale: FCC of vacuum gas oil producing heavy cycle oil/decant oil (carbon black feedstock), FCC gasoline, and light cycle oil is a real refinery process. However, the precursor list is empty, so the key input (vacuum gas oil/heavy gas oil, HS 271019, plus catalyst) is missing. HS codes are also questionable: 270799 covers other coal-tar-type oils (high-temperature coal tar distillation products), not petroleum-derived carbon black feedstock, which would fall under 2710; FCC gasoline under 271012 (light oils) is acceptable and LCO under 271019 is acceptable.

**[INCORRECT (incorrect_hs_code_for_precursor)]** Synthesis of methyl bromide by the reaction of methanol with hydrobromic acid. Methanol is reacted w
  - Precursors: Hydrobromic Acid, Methanol
  - Products: Methyl bromide (bromomethane), Water
  - Rationale: Methanol reacts with HBr to give CH3Br and water (CH3OH + HBr → CH3Br + H2O). This is a well-documented acid-catalyzed nucleophilic substitution, so the process and its inputs and outputs are correct. Methanol (290511) and methyl bromide (290361) have correct HS codes. Hydrobromic acid is misclassified: HS 280610 is hydrogen chloride (hydrochloric acid), and hydrogen bromide falls under 281119.

**[CORRECT]** Commercial production of methyl chloride by reaction of methanol with hydrogen chloride. Methanol is
  - Precursors: Methanol (methyl alcohol), Hydrogen chloride (hydrochloric acid)
  - Products: Methyl chloride (chloromethane, CH3Cl), Water
  - Rationale: Methanol hydrochlorination (CH3OH + HCl -> CH3Cl + H2O) over a catalyst such as alumina or zinc chloride is the dominant industrial route to methyl chloride. Inputs and outputs are correct, with water as the co-product. HS codes match: 290511 is methanol, 280610 is hydrogen chloride (hydrochloric acid), and 290311 is chloromethane (methyl chloride); water has no specific code, which is acceptable.

**[CORRECT]** Production of methyl chloride by direct chlorination of methane with chlorine gas at elevated temper
  - Precursors: Methane, Chlorine
  - Products: Methyl chloride (chloromethane, CH3Cl), Hydrogen chloride (hydrochloric acid), Dichloromethane (secondary product, not always separated), Other higher chlorinated methanes
  - Rationale: Thermal free-radical chlorination of methane with Cl2 is a well-documented industrial route to chloromethanes, producing CH3Cl, CH2Cl2, CHCl3, CCl4 and HCl as by-product. Inputs (methane, chlorine) and outputs are correct. HS codes match: 271121 natural gas gaseous, 280110 chlorine, 290311 chloromethane (methyl chloride), 280610 hydrogen chloride (hydrochloric acid); the products with no HS code are simply unassigned, not mismatched.

**[INCORRECT (hs_code_mismatch)]** Methyllithium can be synthesized by direct reaction of an alkyl halide (such as methyl bromide or me
  - Precursors: Lithium, Methyl bromide, Methyl chloride
  - Products: Methyllithium, Lithium bromide, Lithium chloride
  - Rationale: The synthesis of MeLi from a methyl halide and lithium metal in diethyl ether, giving MeLi·LiX, is a well-documented route, and dioxane can precipitate the lithium halide to give low-halide MeLi. However, several HS codes are wrong. Methyl chloride is 2903.11, not 2903.12 (dichloromethane). Methyl bromide is 2903.61, not 2903.29 (unsaturated chlorinated derivatives). Methyllithium is an organometallic compound (chapter 29, e.g. 2931), not 2845.30 (isotopes, such as enriched lithium-6). Lithium chloride falls under 2827.39, not 2827.20 (calcium chloride). Only lithium (2805.19) and lithium bromide (2827.59) are plausible.

**[CORRECT]** Manufacture of ammonium chloride by direct reaction of ammonia with hydrochloric acid
  - Precursors: Ammonia (anhydrous, liquefied or in aqueous solution), Hydrogen chloride (hydrochloric acid)
  - Products: Ammonium chloride
  - Rationale: Neutralizing ammonia with hydrochloric acid (NH3 + HCl → NH4Cl) is a well-documented route to ammonium chloride, and the listed inputs and output are exactly what the reaction needs. HS 280610 (hydrogen chloride/hydrochloric acid) and HS 282710 (ammonium chloride) are correct. HS 281410 covers anhydrous ammonia, while aqueous ammonia is 281420, so the name is slightly broader than the code, but the code still plausibly matches the named material.

**[INCORRECT (incorrect_inputs)]** Production of ammonium chloride as a by-product in the ammonia-soda (Solvay) process for sodium carb
  - Precursors: Ammonia (anhydrous), Hydrogen chloride (hydrochloric acid), Sodium chloride (salt)
  - Products: Ammonium chloride, Sodium carbonate
  - Rationale: In the Solvay process, ammonium chloride is formed as the byproduct from NaCl + NH3 + CO2 + H2O, with NaHCO3 calcined to Na2CO3. Ammonia is a recycled catalyst-like carrier, and the necessary inputs of carbon dioxide (from limestone) and water are missing; hydrogen chloride is not an input (chloride comes from NaCl). Listing HCl as a precursor and omitting CO2 makes the input set incorrect, though the HS codes (281410, 280610, 250100, 282710, 283620) match their named materials.

**[INCORRECT (hs_code_mismatch)]** Manufacture of ammonium chloride by reaction of ammonium sulfate with sodium chloride (double decomp
  - Precursors: Ammonium sulfate (fertilizer grade or industrial chemical), Sodium chloride (salt)
  - Products: Ammonium chloride, Sodium sulfate
  - Rationale: The double decomposition (NH4)2SO4 + 2NaCl -> 2NH4Cl + Na2SO4 is a documented industrial route, with the two salts separated by their differing solubilities at different temperatures. The inputs and outputs are correct. The HS codes for ammonium sulfate (310221), sodium chloride (250100) and ammonium chloride (282710) are correct. However, sodium sulfate (disodium sulfate) is classified under HS 283311, not 283319, which covers other sodium sulfates such as sodium hydrogen sulfate.

**[INCORRECT (hs_code_mismatch)]** Thermochemical reduction of gadolinium fluoride with calcium metal to produce high purity unwrought 
  - Precursors: Calcium, unwrought (Calcium metal), Gadolinium fluoride
  - Products: Unwrought gadolinium metal (high purity)
  - Rationale: Metallothermic reduction of GdF3 with calcium (2GdF3 + 3Ca -> 2Gd + 3CaF2) is a real, standard route to gadolinium metal, and calcium and GdF3 are the correct inputs (CaF2 slag is a byproduct, and the crude metal is typically vacuum-distilled or remelted to reach high purity). The product code 280530 (rare-earth metals) and the GdF3 code 282619 (other fluorides) are plausible. However, 280521 is not a valid calcium subheading; calcium metal is classified under 280512, so the precursor HS code is wrong.

**[INCORRECT (hs_code_mismatch_precursor)]** Electrolytic reduction of gadolinium chloride in a molten salt medium to yield high purity unwrought
  - Precursors: Gadolinium chloride
  - Products: Unwrought gadolinium metal (high purity)
  - Rationale: Molten-salt electrolysis of rare-earth chlorides is a documented route to rare-earth metals. It is more usual for light rare earths, and Gd is often made by metallothermic reduction of GdF3 or GdCl3 with Ca. GdCl3 in and Gd metal out is chemically coherent. The product code 280530 (rare-earth metals) is correct. The precursor code 282739 (other chlorides) is wrong, because rare-earth chlorides are classified under heading 2846 (probably 284690), not 2827.

**[CORRECT]** Atmospheric distillation of crude oil to produce atmospheric residue (atmospheric tower bottoms, red
  - Precursors: Crude petroleum oil
  - Products: Atmospheric residue (from crude oil)
  - Rationale: Atmospheric distillation of crude oil is a standard refinery operation, and the bottoms stream is called atmospheric residue or reduced crude. Crude oil is the correct sole feed. The lighter co-products (gases, naphtha, kerosene, diesel) are described in the process and only the residue is listed as the output of interest. HS 270900 is correct for crude petroleum oils, and HS 271390 (other residues of petroleum oils) is a plausible fit for the residue. Residue traded as fuel oil could instead fall under 2710, but 271390 is still defensible.

**[INCORRECT (hs_code_mismatch)]** Production of methanol from synthesis gas (hydrogenation of carbon monoxide) using a copper-zinc oxi
  - Precursors: Hydrogen, Carbon monoxide, Natural gas
  - Products: Methanol (methyl alcohol, chemical grade)
  - Rationale: Methanol synthesis from syngas over a Cu/ZnO catalyst at 50-100 atm and about 250°C is a real, well-documented industrial process, and the inputs (H2, CO, natural gas as the syngas source) and the methanol output are reasonable, though steam is omitted and the natural gas overlaps with the syngas components. HS 281121 is carbon dioxide, not carbon monoxide, which belongs under 281129 (other inorganic oxygen compounds of non-metals). The other codes are correct: 280410 for hydrogen, 271121 for natural gas in gaseous state, and 290511 for methanol.

**[CORRECT]** Production of methanol from gasification of biomass (wood, wood waste) to synthesis gas, followed by
  - Precursors: Wood pellets (agglomerated wood fuel, from sawdust and wood waste)
  - Products: Methanol (methyl alcohol, chemical grade)
  - Rationale: Biomass gasification to syngas followed by catalytic methanol synthesis (Cu/ZnO/Al2O3) is a documented route (e.g., bio-methanol plants). Wood pellets are the feedstock and methanol is the product; oxygen/steam and catalysts are utility inputs that are commonly omitted. HS 440131 is wood pellets and HS 290511 is methanol (methyl alcohol), so both codes match.

**[CORRECT]** Lamp black process: Collection of soot produced by burning liquid hydrocarbons, such as vegetable oi
  - Precursors: Heavy hydrocarbon oil (industrial grade, petroleum or vegetable origin)
  - Products: Industrial carbon (carbon black)
  - Rationale: Lamp black production, which collects soot from burning oils in restricted air, is a real, long-established process that yields fine carbon black for pigments and inks. Heavy oil is a valid feedstock, and carbon black is the expected product. HS 271019 (petroleum oils, other than crude, medium/heavy) fits the petroleum-origin heavy oil, and HS 280300 (carbon blacks) fits the product. The 'vegetable origin' mention doesn't match 271019, but it is a minor wording issue and not a substantive error.

**[CORRECT]** Direct synthesis of hydrogen chloride by burning hydrogen in chlorine gas, an exothermic reaction in
  - Precursors: Hydrogen, Chlorine
  - Products: Hydrogen chloride (anhydrous or in aqueous solution)
  - Rationale: Burning H2 in Cl2 (H2 + Cl2 -> 2 HCl) is the well-known chlor-alkali-linked synthesis furnace process, producing high-purity HCl that can be used as gas or absorbed in water. Hydrogen (HS 280410), chlorine (HS 280110), and hydrogen chloride/hydrochloric acid (HS 280610) all match their HS subheadings. Inputs and outputs are complete for the described transformation.

**[INCORRECT (missing_sulfur_input_and_duplicate_bromine_precursor)]** Industrial synthesis of methyl bromide by reaction of methanol with bromine in the presence of sulfu
  - Precursors: Methanol, Elemental bromine (liquid or gaseous bromine), Elemental bromine (liquid or gaseous bromine)
  - Products: Methyl bromide (bromomethane), Water, Sulfuric acid
  - Rationale: The methanol–bromine–sulfur route to methyl bromide is real (6CH3OH + 3Br2 + S → 6CH3Br + 2H2O + H2SO4 overall, with sulfur reducing Br2 to HBr in situ). However, the precursor list omits sulfur (HS 2802 or 2503) and lists bromine twice instead, so the inputs are incorrect. The HS codes given match their named materials (290511 methanol, 280130 bromine, 290361 bromomethane, 280700 sulfuric acid), but water is coded 285100, which is a distilled/conductivity water code and is acceptable. The listed inputs are inconsistent, since the sulfur that the description says is needed is missing, so the process fails on inputs/outputs; the HS code flag is set false because the duplicated entry leaves the required sulfur without any HS code.

**[INCORRECT (missing_or_incorrect_hs_code_on_precursor)]** Acetylene black process: Thermal decomposition of acetylene gas in the absence of air, resulting in 
  - Precursors: Acetylene gas (HS code to be confirmed, typically industrial gas in 290129 or 29012900 or local classification)
  - Products: Industrial carbon (carbon black)
  - Rationale: The acetylene black process is real: acetylene is exothermically decomposed thermally in the absence of air to produce highly pure, conductive carbon black used in batteries and electronics. Inputs and outputs are correct. The product code 280300 (carbon black) is right, but the precursor has no confirmed HS code ('None'), and the hedged suggestion of 290129 is wrong because acetylene is classified under 290129 (other unsaturated acyclic hydrocarbons), which is correct in principle but was left unconfirmed and unassigned, so the HS code requirement is not met.

**[CORRECT]** Conversion of copper matte to blister copper by oxidation in a converter furnace. Air or oxygen-enri
  - Precursors: Copper matte
  - Products: Blister copper (semirefined copper, anode copper), Slag (byproduct, often discarded or further processed), Sulfur dioxide gas (can be captured for sulfuric acid production)
  - Rationale: Converting copper matte to blister copper via Peirce-Smith or similar converters by blowing air or oxygen-enriched air is a standard pyrometallurgical step. Iron is oxidized to slag (with silica flux, which is typically added but a minor omission) and sulfur to SO2, leaving blister copper of ~98-99.5% Cu. HS 740100 covers copper mattes (cement copper) and 740200 covers unrefined copper/copper anodes for electrolytic refining, so both codes match; slag and SO2 correctly have no HS code.

**[CORRECT]** Smelting of copper concentrates to produce copper matte, then further processing by converting the m
  - Precursors: Copper ores and concentrates
  - Products: Blister copper (semirefined copper, anode copper), Slag (byproduct, often discarded or further processed), Sulfur dioxide gas (can be captured for sulfuric acid production)
  - Rationale: Smelting copper concentrates to matte followed by Peirce-Smith converting to blister copper is the standard pyrometallurgical route for sulfide ores. Inputs (concentrates with silica flux), and outputs (blister copper, slag, SO2 off-gas) are correct. HS 260300 covers copper ores and concentrates, and HS 740200 covers unrefined copper and copper anodes for electrolytic refining, so blister/anode copper matches; slag and SO2 have no assigned code, which is acceptable.

**[CORRECT]** Production of copper wire (maximum cross-section not exceeding 6mm) by wire drawing of refined coppe
  - Precursors: Copper rods (of refined copper)
  - Products: Copper wire (of refined copper, maximum cross-section not exceeding 6mm)
  - Rationale: Drawing refined copper rod through progressively smaller dies, followed by annealing to restore ductility, is standard industrial practice for making copper wire. Refined copper rod is the appropriate input and fine copper wire the appropriate output. HS 740710 covers copper bars and rods of refined copper, and HS 740819 covers refined copper wire with a maximum cross-section of 6 mm or less, so both codes match.

**[CORRECT]** Production of ammonium sulfate by reacting ammonium carbonate solution with gypsum (calcium sulfate 
  - Precursors: Ammonium carbonate, Gypsum (Calcium sulfate dihydrate)
  - Products: Ammonium sulfate (fertilizer grade or industrial chemical), Calcium carbonate (by-product)
  - Rationale: The Merseburg process reacts gypsum (CaSO4·2H2O) with ammonium carbonate solution to give ammonium sulfate in solution and precipitated calcium carbonate, (NH4)2CO3 + CaSO4 → (NH4)2SO4 + CaCO3. It is a well-documented industrial route. HS 252010 (gypsum; anhydrite) fits gypsum, and HS 310221 (ammonium sulfate) fits the product. Ammonium carbonate and calcium carbonate have no HS code listed, which is not a mismatch, so the codes given are accurate.

**[INCORRECT (missing_precursor)]** Synthesis of gadolinium(III) fluoride by reaction of gadolinium oxide with ammonium bifluoride. The 
  - Precursors: Gadolinium oxide
  - Products: Gadolinium(III) fluoride, Ammonia, Hydrogen fluoride
  - Rationale: Converting Gd2O3 to GdF3 with ammonium bifluoride, through an intermediate NH4GdF4 that decomposes on heating, is a documented route for rare-earth fluorides. However, the precursor list omits ammonium bifluoride, the key fluorinating reagent, and the water byproduct from the oxide fluorination is also not listed. The HS codes are plausible: 284690 covers other rare-earth compounds and 282619 covers other fluorides.

**[INCORRECT (hs_code_mismatch)]** Preparation of gadolinium(III) fluoride hydrate by reacting gadolinium(III) chloride with hydrofluor
  - Precursors: Gadolinium(III) chloride, Hydrofluoric acid
  - Products: Gadolinium(III) fluoride hydrate (GdF3·xH2O), Hydrochloric acid
  - Rationale: Precipitating GdF3·xH2O from aqueous GdCl3 with HF, with HCl as the byproduct, is a documented and stoichiometrically sound route. The hydrate can then be dehydrated or fluorinated with NH4HF2 to give anhydrous GdF3. The inputs and outputs are consistent, and HCl is correctly listed as a coproduct. However, compounds of rare-earth metals are classified under HS 2846, so the codes 282739 (other chlorides) and 282619 (other fluorides) for gadolinium chloride and gadolinium fluoride do not match. HF at 281111 is correct.

**[CORRECT]** Industrial production of wood pellets by compressing dry sawdust and wood waste through a high-press
  - Precursors: Sawdust and wood waste (not agglomerated)
  - Products: Wood pellets (agglomerated wood fuel, from sawdust and wood waste)
  - Rationale: Wood pelletizing is a well-documented industrial process. Dried, ground sawdust is compressed through a ring or flat die, and lignin softens under heat and pressure to bind the pellets. Sawdust is the standard feedstock and pellets are the product. HS 4401.41 (sawdust, not agglomerated, HS 2022) and HS 4401.31 (wood pellets) match the named materials. The precursor name also mentions 'wood waste', which sits under 4401.49, but this is a minor imprecision.

**[INCORRECT (incomplete_or_mismatched_inputs)]** Comprehensive generation and recovery of copper scrap (HS 740400) from both the production of copper
  - Precursors: Copper tubes and pipes, of copper-zinc base alloys (brass), Copper tubes and pipes, of copper alloys (other than copper-zinc, copper-nickel base alloys), Copper tubes and pipes, of refined copper, Obsolete copper-containing equipment (industrial, electronic, etc.), Copper alloy production scrap (including bronze and brass scrap)
  - Products: Copper scrap (waste and scrap)
  - Rationale: Copper scrap recovery from mill/fabrication scrap and end-of-life products is a real, well-documented process, and HS 740400 (copper waste and scrap) and the tube/pipe codes 741110, 741121, 741129 match their descriptions. However, the precursor list is incomplete and skewed: it lists only copper tubes/pipes (which are finished products, not typical scrap feedstock) alongside generic obsolete equipment and alloy production scrap, while omitting major sources named in the description such as copper wire, sheets, electrical wiring, and refined copper production scrap. The inputs do not coherently reflect the described scope, so the input/output set is not correct.

**[CORRECT]** Production of industrial carbon (carbon black) from natural gas can be achieved by two primary histo
  - Precursors: Natural gas
  - Products: Industrial carbon (carbon black)
  - Rationale: Channel black (partial combustion of natural gas impinging on cooled steel channels) and thermal black (cyclic pyrolysis of natural gas in the absence of air at about 1200-1400°C) are both documented industrial processes yielding carbon black; thermal black has larger particles and low surface area, used in rubber and plastics. Natural gas is the correct feedstock, though the channel process also uses air/oxygen, which is implicit in the description. HS 271121 is natural gas in gaseous state and HS 280300 is carbon (carbon blacks and other forms of carbon), so both codes match.

**[CORRECT]** Industrial synthesis of ammonium sulfate (HS 310221) is carried out via two primary routes: (1) dire
  - Precursors: Ammonia, Sulphuric acid
  - Products: Ammonium sulfate (fertilizer grade or industrial chemical)
  - Rationale: Ammonium sulfate is made industrially by neutralizing ammonia with sulfuric acid, and it is also a large-volume byproduct of caprolactam production. In that route, the Beckmann rearrangement uses oleum or sulfuric acid, and the acid is then neutralized with ammonia. Ammonia and sulfuric acid are the correct inputs, and ammonium sulfate is the correct output. The HS codes match: 281410 is anhydrous ammonia, 280700 is sulphuric acid (including oleum), and 310221 is ammonium sulphate.

**[CORRECT]** Elemental bromine is industrially produced by oxidizing bromide ions present in brine sources—such a
  - Precursors: Brine (containing bromide ions) or Bittern (brine residue from salt production, containing bromides), Chlorine
  - Products: Elemental Bromine
  - Rationale: Chlorine oxidation of bromide in brine, seawater, or bittern (Cl2 + 2Br- -> Br2 + 2Cl-) followed by air blowing-out (steam/air stripping) and condensation is the standard commercial bromine process; solvent extraction routes are also documented. Brine/bittern and chlorine are the correct key inputs. HS 280110 (chlorine) and HS 280130 (fluorine; bromine) - note that 280130 covers fluorine and bromine, so it correctly includes bromine, and the brine having no specific HS code is acceptable.

**[INCORRECT (product_mischaracterized)]** Thermal and/or catalytic cracking (hydrocracking and hydrodeoxygenation) of vegetable oils to produc
  - Precursors: Vegetable oil (e.g., palm, waste cooking oil), Hydrogen
  - Products: Heavy hydrocarbon oil (industrial grade)
  - Rationale: Hydrodeoxygenation of vegetable oils over NiMo/Al2O3 is a real, commercial route (HVO/renewable diesel). However, HDO followed by hydrocracking and isomerization gives mainly diesel, jet and naphtha-range paraffins (C15-C18 and lighter), not a heavy fuel oil analogue, because hydrocracking shortens chains. The listed product is therefore mischaracterized, and by-products such as water, propane and CO/CO2 are omitted. The HS codes are plausible: 151110 for crude palm oil, 280410 for hydrogen, and 271019 for non-biodiesel hydrocarbon oils.
