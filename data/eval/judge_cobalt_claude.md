# MEKH Process Factual Accuracy — LLM-as-Judge Report

Generated: 2026-09-28 19:37 UTC
Judge model: `claude-cli:claude-sonnet-5-5`

## Summary

| Condition | Processes | Overall correct | Process plausible | I/O correct | HS codes correct |
|-----------|----------:|----------------:|------------------:|------------:|-----------------:|
| cobalt | 71 | 45/71 (63.4%) | 71/71 (100.0%) | 62/71 (87.3%) | 52/71 (73.2%) |

## Precision proxy

Precision proxy = (overall correct) / (total judged)

- **cobalt**: 0.634

## Error modes

### cobalt
- `hs_code_mismatch`: 11
- `missing_input_and_duplicate_precursor`: 2
- `hs_code_mismatch_input`: 2
- `missing_key_input`: 1
- `missing_precursors`: 1
- `missing_precursors_and_duplicated_input`: 1
- `incorrect_precursor_and_hs_code`: 1
- `hs_code_mismatch_product`: 1
- `incomplete_outputs_and_hs_mismatch_for_salts`: 1
- `process_description_inaccuracy`: 1
- `duplicate_precursor`: 1
- `missing_precursors_and_hs_mismatch`: 1
- `hs_code_invalid_or_nonspecific`: 1
- `hs_code_mismatch_precursor`: 1

## Per-process details

### cobalt

**[INCORRECT (hs_code_mismatch)]** Reduction of cobalt(II,III) oxide concentrate via the aluminothermic process or in a blast furnace w
  - Precursors: Cobalt(II,III) oxide concentrate
  - Products: Cobalt mattes and other intermediate products of cobalt metallurgy; unwrought cobalt, powders, and alloys
  - Rationale: Reduction of cobalt oxides with aluminum (aluminothermic) or with carbon is a real route to cobalt metal, so the process is plausible, and the input/output roles are broadly reasonable. However, HS 282200 is 'Cobalt oxides and hydroxides; commercial cobalt oxides', which fits the precursor reasonably, but the product code HS 810520 covers 'Cobalt mattes and other intermediate products of cobalt metallurgy; unwrought cobalt; powders', and the name lumps in 'alloys' and describes a single metal product, so the product label is a muddled mix of categories. The product code is therefore an imprecise match, and the 'concentrate' wording for a commercial oxide (HS 2822) is also inconsistent, so the HS mapping is flagged as inaccurate.

**[INCORRECT (missing_key_input)]** Precipitation of cobalt(II) hydroxide from aqueous cobalt(II) salts (such as cobalt(II) sulfate or c
  - Precursors: Cobalt(II) sulfate, Cobalt(II) nitrate, Cobalt(II) nitrate
  - Products: Cobalt(II) hydroxide
  - Rationale: Precipitating Co(OH)2 from aqueous Co(II) salts with alkali is a well-documented process. The input list omits the alkali (e.g., NaOH, HS 281512), which is the essential reagent. It also lists cobalt(II) nitrate twice and presents the sulfate and nitrate as simultaneous inputs, although they are alternative cobalt sources. The HS codes are correct: 2833.29 for other metal sulfates, 2834.29 for other metal nitrates, and 2822.00 for cobalt oxides and hydroxides.

**[CORRECT]** Hydrometallurgical processing of cobalt waste and scrap, involving leaching with acids (e.g. sulfuri
  - Precursors: Cobalt waste and scrap, Sulfuric acid
  - Products: Cobalt sulfate, Iron/metal residue as waste
  - Rationale: Sulfuric acid leaching of cobalt scrap (often with a reductant or oxidant such as hydrogen peroxide) followed by purification to remove iron and other impurities and yield cobalt sulfate solution is a well-established hydrometallurgical route. HS 810530 covers cobalt waste and scrap, and HS 283329 covers sulfates of other metals, which includes cobalt sulfate. Sulfuric acid and the metal residue lack HS codes in the listing, which is acceptable, and the residue output is a reasonable waste stream.

**[CORRECT]** Precipitation of cobalt(II) carbonate by reaction of cobalt(II) sulfate with sodium carbonate in aqu
  - Precursors: Cobalt(II) sulfate, Sodium carbonate
  - Products: Cobalt carbonate, Sodium sulfate (byproduct, often recovered or discarded)
  - Rationale: CoSO4 + Na2CO3 → CoCO3↓ + Na2SO4 is a well-documented metathesis precipitation used industrially (often with bicarbonate or controlled pH to limit basic carbonate formation). The inputs and outputs are correct, and sodium sulfate is the stoichiometric byproduct. HS codes match: 283329 covers other sulfates including cobalt sulfate, 283620 is disodium carbonate, and 283699 covers other carbonates including cobalt carbonate. The byproduct has no code assigned (sodium sulfate would be 283311), which is acceptable for a byproduct.

**[CORRECT]** Direct chlorination of cobalt metal with chlorine gas to produce cobalt(II) chloride (anhydrous).
  - Precursors: Cobalt (unwrought, powders), Chlorine (elemental, liquefied or compressed gas)
  - Products: Cobalt chlorides
  - Rationale: Direct reaction of cobalt metal with chlorine gas (Co + Cl2 → CoCl2) at elevated temperature is a documented route to anhydrous cobalt(II) chloride, and cobalt forms the dichloride rather than the trichloride. The inputs (cobalt powder and chlorine) and the output (cobalt chloride) are correct. The HS codes match: 8105.20 covers unwrought cobalt and powders, 2801.10 covers chlorine, and 2827.39 covers other chlorides, which includes cobalt chlorides.

**[CORRECT]** Reaction of cobalt(II) hydroxide with hydrochloric acid to produce hydrated cobalt(II) chloride.
  - Precursors: Cobalt(II) hydroxide or oxides, Hydrochloric acid (aqueous solution)
  - Products: Cobalt chlorides (hydrated)
  - Rationale: Co(OH)2 + 2 HCl + 4 H2O -> CoCl2·6H2O is a standard neutralization used to make cobalt chloride hexahydrate. HS 2822.00 covers cobalt oxides and hydroxides, HS 2806.10 is hydrogen chloride (hydrochloric acid), and HS 2827.39 covers other chlorides, which includes cobalt chloride. The inputs and outputs are consistent, with water incorporated as hydration.

**[CORRECT]** Reaction of cobalt(II) carbonate with hydrochloric acid to produce hydrated cobalt(II) chloride.
  - Precursors: Cobalt(II) carbonate (see note: HS code may be 2836.99.10) , Hydrochloric acid
  - Products: Cobalt chlorides (hydrated)
  - Rationale: CoCO3 + 2HCl + 5H2O → CoCl2·6H2O + CO2 is a standard, well-documented route to hydrated cobalt chloride; CO2 by-product is not listed but is a minor omission. HCl is correctly HS 280610 (hydrogen chloride/hydrochloric acid). Cobalt chlorides fall under HS 282739 (other chlorides), and cobalt carbonate falls under 2836.99 (other carbonates), so the codes are consistent.

**[INCORRECT (hs_code_mismatch)]** Cobalt is produced through various smelting and refining processes, depending on the type of ore or 
  - Precursors: Nickel-cobalt sulfide concentrate
  - Products: Cobalt mattes and other intermediate products of cobalt metallurgy; unwrought cobalt, powders, and alloys
  - Rationale: Producing cobalt from nickel-cobalt sulfide concentrates via smelting to matte followed by hydrometallurgical refining (Sherritt process with hydrogen reduction) is a real, documented route, and the sulfide concentrate is a valid input. HS 810520 is 'Cobalt mattes and other intermediates of cobalt metallurgy; unwrought cobalt; powders', so the product code matches the description reasonably. However, HS 260500 is 'Cobalt ores and concentrates', not a nickel-cobalt sulfide concentrate (which would fall under 260400, nickel ores and concentrates), so the precursor code is a mismatch.

**[CORRECT]** Manufacture of finished cobalt articles (HS 810590) can be achieved through several metallurgical pr
  - Precursors: Cobalt powders, mattes, unwrought cobalt, or cobalt alloys
  - Products: Other cobalt articles (not elsewhere classified under heading 8105)
  - Rationale: Powder metallurgy, machining of unwrought or cast cobalt, and precision casting are all recognized routes to finished cobalt and cobalt-alloy components. HS 810520 covers cobalt mattes, unwrought cobalt and cobalt powders, and 810590 covers other cobalt articles, so both codes match. Mattes are not a realistic direct feed for articles and cobalt alloys are only loosely covered by 810520, but these are minor imprecisions in the precursor label.

**[CORRECT]** Production of cobalt oxides via thermal decomposition and oxidation of cobalt(II) hydroxide or cobal
  - Precursors: Cobalt(II) carbonate
  - Products: Cobalt(II,III) oxide
  - Rationale: Calcining cobalt(II) carbonate in air at roughly 400-800 °C gives Co3O4, a well-documented industrial route to commercial cobalt oxide. The listed precursor (CoCO3) and product (Co3O4) are consistent with this route. HS 282200 covers cobalt oxides and hydroxides, including commercial cobalt oxides, and HS 283699 is the residual 'other carbonates' code that covers cobalt carbonate. The description's mention of Co2O3 and CoO as alternatives is loose, but it does not affect the specified Co3O4 pathway.

**[INCORRECT (missing_precursors)]** Cobalt(II,III) oxide (Co3O4) can be produced either by direct oxidation of cobalt(II) oxide (CoO) in
  - Precursors: 
  - Products: Cobalt(II,III) oxide
  - Rationale: Co3O4 is genuinely formed by air oxidation of CoO (or by heating cobalt salts/hydroxides/carbonates, with Co2O3 decomposing to Co3O4 at moderate heat), so the chemistry is recognizable. However, the precursor list is empty even though the description names CoO, oxygen/air, and Co2O3 as inputs, so the inputs are missing. HS 282200 (cobalt oxides and hydroxides; commercial cobalt oxides) correctly matches the Co3O4 product.

**[CORRECT]** Reaction of metallic cobalt with nitric acid and water to produce cobalt(II) nitrate hexahydrate and
  - Precursors: Cobalt (metal), Nitric acid (aqueous solution or fuming)
  - Products: Cobalt(II) nitrate (hexahydrate), Nitrogen dioxide (waste gas)
  - Rationale: Cobalt metal dissolves in concentrated nitric acid (Co + 4HNO3 → Co(NO3)2 + 2NO2 + 2H2O). The solution crystallizes as cobalt(II) nitrate hexahydrate, so the process is real and NO2 is the expected off-gas. HS codes are appropriate: 2808.00 for nitric acid, 2834.29 for nitrates of other metals, and 8105 for cobalt. Unwrought cobalt or powder would strictly fall under 8105.20 rather than 8105.90, but the heading is still correct for the commodity.

**[INCORRECT (missing_precursors_and_duplicated_input)]** Industrial-scale production of sodium carbonate (soda ash) via the Solvay process, involving the rea
  - Precursors: Rock salt (sodium chloride, natural, unrefined), Rock salt (sodium chloride, natural, unrefined), Rock salt (sodium chloride, natural, unrefined)
  - Products: Sodium carbonate, Calcium chloride
  - Rationale: The Solvay process is a real, well-documented industrial route to soda ash, with calcium chloride as the main byproduct and ammonia recycled. However, the precursor list contains rock salt three times and omits limestone (calcium carbonate, HS 252100/2521) and ammonia (HS 281410), both explicitly described and essential; limestone is the source of CO2 and lime. The HS codes given are individually valid (250100 for salt, 283620 for disodium carbonate, 282720 for calcium chloride), but the input set is incomplete and redundant.

**[CORRECT]** Electrolysis of brine (chlor-alkali process) to produce elemental chlorine gas, hydrogen, and sodium
  - Precursors: Sodium Chloride (in brine solution), Water (for aqueous phase), Electricity
  - Products: Chlorine (elemental, liquefied or compressed gas), Hydrogen (elemental, gas), Sodium Hydroxide (caustic soda, solid or in solution)
  - Rationale: The chlor-alkali process electrolyzes brine to give Cl2, H2 and NaOH, using NaCl, water and electricity, so the inputs and outputs are correct. HS 250100 (salt, including in aqueous solution), 280110 (chlorine) and 280410 (hydrogen) match their names. HS 281512 covers sodium hydroxide in aqueous solution (soda lye), which is the form the cell actually produces. The label's mention of 'solid' would technically fall under 281511, but this is a minor imprecision and does not make the classification wrong.

**[CORRECT]** Oxidation of hydrogen chloride (Deacon Process) to produce elemental chlorine gas and water. Hydroge
  - Precursors: Hydrogen Chloride (anhydrous gas), Oxygen (gas)
  - Products: Chlorine (elemental, liquefied or compressed gas), Water (byproduct)
  - Rationale: The Deacon process (4 HCl + O2 -> 2 Cl2 + 2 H2O) is a well-documented industrial reaction run over a copper- or ruthenium-based catalyst. The inputs (HCl and oxygen) and outputs (chlorine and water) are stoichiometrically correct. HS 280610 (hydrogen chloride) and HS 280110 (chlorine) match their materials, and leaving oxygen and water without codes is acceptable, so no listed code is wrong.

**[INCORRECT (incorrect_precursor_and_hs_code)]** Absorption of hydrogen chloride gas in water to produce hydrochloric acid (aqueous solution)
  - Precursors: Hydrogen chloride (gaseous), Hydrogen chloride (gaseous)
  - Products: Hydrochloric acid (aqueous solution)
  - Rationale: Absorbing HCl gas in water to make hydrochloric acid is a real, standard industrial process. However, the precursor list duplicates hydrogen chloride and omits water, which is a required input. Also, HS 281119 is 'other inorganic acids' and is not the standard code for hydrogen chloride, which is HS 280610 (hydrogen chloride/hydrochloric acid). Only the product code 280610 is correct, so the precursor code does not match.

**[INCORRECT (missing_input_and_duplicate_precursor)]** Methanol carbonylation (Monsanto and Cativa processes): Commercial production of acetic acid via the
  - Precursors: Methanol (methyl alcohol), Methanol (methyl alcohol)
  - Products: Acetic acid (glacial or aqueous solution)
  - Rationale: Methanol carbonylation (Monsanto with Rh, Cativa with Ir) is a real, dominant industrial route to acetic acid. However, the precursor list names methanol twice and omits carbon monoxide (HS 280419), an essential stoichiometric reactant (CH3OH + CO -> CH3COOH). The HS codes themselves are correct: 290511 is methanol and 291521 is acetic acid, but the input list is incomplete and redundant.

**[INCORRECT (missing_input_and_duplicate_precursor)]** Acetaldehyde oxidation: Industrial oxidation of acetaldehyde with oxygen to produce acetic acid, oft
  - Precursors: Acetaldehyde (ethanal), Acetaldehyde (ethanal)
  - Products: Acetic acid (glacial or aqueous solution)
  - Rationale: Acetaldehyde oxidation to acetic acid using oxygen (air) and a manganese or cobalt acetate catalyst is a well-documented industrial process. However, the precursor list names acetaldehyde twice and omits oxygen (air), the essential co-reactant stated in the process description, so the inputs are incorrect. The HS codes are plausible: 291212 is acetaldehyde and 291521 is acetic acid, so the codes match the named materials.

**[CORRECT]** Ethylene oxidation (Showa Denko process): Single-stage catalytic oxidation of ethylene with oxygen t
  - Precursors: Ethylene (acyclic hydrocarbons; unsaturated, ethylene), Oxygen (industrial, compressed or liquefied)
  - Products: Acetic acid (glacial or aqueous solution)
  - Rationale: The Showa Denko process is a real industrial route in which ethylene is oxidized directly with oxygen to acetic acid over a palladium catalyst with a heteropoly acid (e.g., silicotungstic/phosphomolybdic acid), commercialized in Japan (Oita) around 1997. Ethylene and oxygen are the correct primary inputs (water and small amounts of byproducts like acetaldehyde/CO2 are minor omissions), and acetic acid is the product. HS codes are accurate: 290121 = ethylene, 280440 = oxygen, 291521 = acetic acid.

**[INCORRECT (hs_code_mismatch)]** Oxidative fermentation: Microbial aerobic oxidation of ethanol by Acetobacter or Gluconobacter speci
  - Precursors: Ethanol (undenatured, of an alcoholic strength by volume of 80% vol or higher), Oxygen (industrial, compressed or liquefied), Ethanol (undenatured, of an alcoholic strength by volume of 80% vol or higher)
  - Products: Acetic acid (glacial or aqueous solution)
  - Rationale: Acetobacter/Gluconobacter oxidation of ethanol to acetic acid is a real, well-documented process (vinegar production), and ethanol and oxygen are the correct reactants (the duplicated ethanol entry is redundant but not chemically wrong). However, HS 291521 is acetic acid, which fits the product, while HS 280440 is oxygen, which fits, and HS 220710 is undenatured ethyl alcohol of 80% vol or higher, which fits. The issue is that industrial-grade 80%+ ethanol and compressed pure oxygen are atypical for fermentation, since these microbes require dilute ethanol (under ~15%) and air, so the specified inputs do not plausibly match real vinegar production. Additionally, commercial vinegar itself is classified under HS 2209, not 291521, so the product code does not match the 'commercial vinegar' framing.

**[CORRECT]** Industrial synthesis of nitric acid via the Ostwald process: catalytic oxidation of ammonia (NH3) wi
  - Precursors: Ammonia; anhydrous, Oxygen or air
  - Products: Nitric acid (aqueous solution or fuming)
  - Rationale: The Ostwald process (catalytic oxidation of NH3 to NO over Pt/Rh, oxidation to NO2, absorption in water to give HNO3) is a well-documented industrial route, and ammonia from Haber-Bosch is the standard precursor. Ammonia and air/oxygen are the correct main inputs; water for absorption is omitted but is a minor, ubiquitous utility input. HS 281410 (anhydrous ammonia) and HS 280800 (nitric acid; sulphonitric acids) match their names, and air/oxygen having no code is acceptable.

**[INCORRECT (hs_code_mismatch_product)]** Direct synthesis of hydrogen chloride gas by burning hydrogen in chlorine gas (HCl burner/oven proce
  - Precursors: Hydrogen (elemental, compressed or liquefied), Chlorine
  - Products: Hydrogen chloride (gaseous)
  - Rationale: Burning H2 in Cl2 (H2 + Cl2 -> 2HCl) is a real, well-documented industrial process, and hydrogen and chlorine are the correct inputs with HCl as the product. The precursor codes are right (280410 is hydrogen, 280110 is chlorine). However, hydrogen chloride is classified under HS 280610, not 281119, which covers other inorganic acids. The claim that this is 'the primary industrial method' is also overstated, since most HCl is a by-product of chlorination reactions.

**[INCORRECT (hs_code_mismatch)]** Production of hydrogen chloride gas as a byproduct during the industrial chlorination or fluorinatio
  - Precursors: Hydrocarbon (e.g., ethylene, methane, etc.), Chlorine
  - Products: Hydrogen chloride (gaseous), Organochloride
  - Rationale: Hydrogen chloride as a byproduct of chlorinating hydrocarbons (e.g., methane to chloromethanes, ethylene/ethane chlorination) is a well-documented industrial process, and the inputs and outputs are chemically sensible. However, the HS codes are problematic: hydrogen chloride (hydrochloric acid) is HS 280610, while 281119 is 'other inorganic acids' and does not match. Hydrocarbon has no HS code, and 290319 (saturated chlorinated derivatives of acyclic hydrocarbons, other) is only a partial fit for a generic 'organochloride'. The hydrogen chloride code error makes the process incorrect overall.

**[CORRECT]** Production of methanol from synthesis gas derived by biomass gasification, followed by catalytic con
  - Precursors: Syngas (from biomass gasification)
  - Products: Methanol (methyl alcohol)
  - Rationale: Biomass-derived syngas converted to methanol over Cu/ZnO/Al2O3 catalyst is a well-documented route (biomethanol), and syngas is the direct feed. Methanol is correctly classified under HS 290511. Syngas has no specific HS code listed (None), which is reasonable since it is an intermediate that typically falls under 271600/2705 or is not traded, so this is not a mismatch.

**[CORRECT]** Wacker process (oxidation of ethylene with a palladium/copper catalyst system) to produce acetaldehy
  - Precursors: Ethylene, Oxygen
  - Products: Acetaldehyde (ethanal)
  - Rationale: The Wacker process is a well-documented industrial route: ethylene is oxidized by O2 using a PdCl2/CuCl2 catalyst system in water to give acetaldehyde. Ethylene and oxygen are the correct stoichiometric inputs (water and catalyst are implied or recycled). HS codes match: 290121 is ethylene, 280440 is oxygen, and 291212 is acetaldehyde.

**[CORRECT]** Dehydrogenation of ethanol over a copper catalyst to produce acetaldehyde and hydrogen
  - Precursors: Ethanol (ethyl alcohol)
  - Products: Acetaldehyde (ethanal), Hydrogen
  - Rationale: Copper-catalyzed dehydrogenation of ethanol (CH3CH2OH -> CH3CHO + H2) is a well-documented industrial route to acetaldehyde, typically at 250-300 °C. Ethanol as sole input and acetaldehyde plus hydrogen as outputs are correct. HS codes match: 220710 is undenatured ethyl alcohol of 80% vol or higher, 291212 is acetaldehyde, and 280410 is hydrogen.

**[CORRECT]** Steam cracking of ethane to produce ethylene. Ethane is heated with steam to high temperatures (arou
  - Precursors: Ethane (gaseous or liquefied)
  - Products: Ethylene (ethene, gaseous or liquefied), Hydrogen, Minor byproducts (methane, propylene, etc.)
  - Rationale: Steam cracking of ethane at roughly 800-850°C with steam dilution, followed by rapid quenching, is a standard industrial route to ethylene, co-producing hydrogen, methane, and minor propylene and other byproducts. Ethane is correctly classified under HS 271119 (other liquefied petroleum gases and gaseous hydrocarbons), and ethylene under HS 290121. Hydrogen (HS 280410) and the byproduct mix have no code listed, which is acceptable since they are not assigned a specific match here.

**[CORRECT]** Steam cracking of naphtha to produce ethylene. Petroleum naphtha is mixed with steam and heated in a
  - Precursors: Naphtha (petroleum)
  - Products: Ethylene (ethene, gaseous or liquefied), Hydrogen, Minor byproducts (methane, propylene, butadiene, aromatics, etc.)
  - Rationale: Steam cracking of naphtha with steam dilution at about 800-900°C, followed by rapid quench and separation, is the standard industrial route to ethylene. Hydrogen, methane, propylene, butadiene and aromatics (pyrolysis gasoline) are all genuine co-products. HS 271012 (light petroleum oils, which include naphtha) and HS 290121 (ethylene) match their materials. Hydrogen and the mixed byproducts have no code listed, but that omission does not make any listed code wrong.

**[CORRECT]** Steam cracking of propane to produce ethylene. Propane, mixed with steam, is passed through a high-t
  - Precursors: Propane (gaseous or liquefied)
  - Products: Ethylene (ethene, gaseous or liquefied), Hydrogen, Minor byproducts (methane, propylene, etc.)
  - Rationale: Steam cracking of propane at about 800-850°C is a well-documented industrial process, widely used in the US and Middle East, that yields ethylene, propylene, hydrogen, and methane. Propane and steam are the correct feed, and steam is a diluent, so omitting it from the precursor list is acceptable. HS 271112 is liquefied propane and HS 290121 is ethylene, so both codes match. Hydrogen and the minor byproducts are listed without HS codes, which is acceptable.

**[INCORRECT (hs_code_mismatch)]** Fermentation of plant-derived sugars (e.g., from corn, sugarcane, or other starchy crops) by yeast t
  - Precursors: Glucose syrup (plant-derived; including corn syrup and starch hydrolysate), Sugars from plant material (glucose, dextrose, fructose syrups, and hydrolysates)
  - Products: Ethanol (undenatured, of an alcoholic strength by volume of 80% vol or higher), Carbon Dioxide
  - Rationale: Yeast fermentation of glucose to ethanol and CO2, followed by distillation to 80% vol or higher, is a real and standard industrial process, and glucose syrup and sugars are valid feedstocks. HS 170230 (glucose syrup with under 20% fructose), 220710 (undenatured ethyl alcohol of 80% vol or higher) and 281121 (carbon dioxide) match their names. HS 170199 covers refined cane or beet sugar (sucrose) in solid form, not glucose, dextrose or fructose syrups and hydrolysates, so that precursor code is mismatched.

**[CORRECT]** Hydration of ethylene (from petrochemical sources) using a solid acid catalyst (e.g., phosphoric aci
  - Precursors: Ethylene, Water (distilled or deionized, laboratory or industrial grade)
  - Products: Ethanol (undenatured, of an alcoholic strength by volume of 80% vol or higher)
  - Rationale: Direct catalytic hydration of ethylene over phosphoric acid on a solid support (silica/diatomaceous earth) is a well-documented industrial route to synthetic ethanol, followed by distillation to purify. Ethylene (HS 290121), water (HS 285100, distilled/conductivity water), and undenatured ethyl alcohol of 80% vol or higher (HS 220710) are correct inputs, outputs, and classifications. Ethylene and water are the only necessary reactants, and the catalyst is not consumed.

**[INCORRECT (hs_code_mismatch)]** Methanol is synthesized industrially via catalytic hydrogenation of either carbon monoxide (CO, syng
  - Precursors: Carbon monoxide (CO), Hydrogen (H₂)
  - Products: Methanol (methyl alcohol)
  - Rationale: Methanol synthesis by hydrogenating CO or CO2 over Cu/ZnO/Al2O3 is a well-established industrial process, and CO plus H2 are valid inputs with methanol as the output. However, HS 281121 is carbon dioxide, not carbon monoxide, which falls under 281129 (other inorganic oxygen compounds of non-metals). Hydrogen (280410) and methanol (290511) are correctly coded, so the CO code is the only error.

**[CORRECT]** Industrial production of oxygen from atmospheric air can be accomplished by two principal methods: (
  - Precursors: Atmospheric Air
  - Products: Oxygen (industrial, compressed or liquefied), Nitrogen (byproduct), Argon (byproduct, from cryogenic distillation)
  - Rationale: Cryogenic air separation and PSA are both well-documented industrial methods for producing oxygen from air. Atmospheric air is the only real input, and cryogenic distillation does yield oxygen, nitrogen and argon, with argon correctly attributed only to the cryogenic route. The HS codes are correct: 2804.40 is oxygen, 2804.30 is nitrogen, and 2804.21 is argon. Air has no HS code, which is acceptable because it is a free input.

**[INCORRECT (incomplete_outputs_and_hs_mismatch_for_salts)]** Hydrometallurgical recovery of cobalt from cobalt waste and scrap by leaching with acids, solvent ex
  - Precursors: Cobalt waste and scrap, Sulfuric acid (industrial or laboratory grade, concentrated or dilute)
  - Products: Cobalt hydroxide or cobalt salts, Spent acid and non-cobalt residue
  - Rationale: Hydrometallurgical cobalt recovery from scrap by acid leaching, solvent extraction, precipitation and electrowinning is a real, recognized process. However, the description ends with electrowinning to metallic cobalt, yet the product list omits cobalt metal (HS 8105.20). It also lists a reductant/oxidant and extractant/base (e.g., NaOH, organic extractants) as absent inputs. HS 282200 covers cobalt oxides and hydroxides only, so it does not fit 'cobalt salts' such as cobalt sulfate (HS 2833.29). The codes 810530 for scrap and 280700 for sulfuric acid are correct.

**[CORRECT]** Synthesis of anhydrous ammonia (NH3) by the Haber-Bosch process: Nitrogen (N2) and hydrogen (H2), bo
  - Precursors: Hydrogen, Nitrogen (elemental, compressed or liquefied)
  - Products: Ammonia; anhydrous
  - Rationale: The Haber-Bosch process reacts N2 and H2 over an iron-based catalyst at high pressure and temperature to make ammonia, and it is the dominant industrial route. The inputs and output are correct. The HS codes match: 2804.10 is hydrogen, 2804.30 is nitrogen, and 2814.10 is anhydrous ammonia.

**[CORRECT]** Steam methane reforming (SMR) of natural gas to produce hydrogen and carbon monoxide, followed by wa
  - Precursors: Natural gas (methane, in gaseous state), Steam (Water)
  - Products: Hydrogen (elemental, compressed or liquefied), Carbon dioxide
  - Rationale: Steam methane reforming followed by water-gas shift and hydrogen separation (typically by pressure swing adsorption) is the dominant industrial route to hydrogen. Natural gas and steam are the correct feeds, and hydrogen and CO2 are the correct main products. The HS codes match their materials: 271121 is natural gas in gaseous state, 280410 is hydrogen, 281121 is carbon dioxide, and 285100 covers purified/distilled water, which is an acceptable stand-in for process steam.

**[CORRECT]** Industrial coal gasification to produce syngas (hydrogen and carbon monoxide), followed by water-gas
  - Precursors: Bituminous coal (not agglomerated), Steam (Water), Oxygen (elemental, gas)
  - Products: Hydrogen (elemental, compressed or liquefied), Carbon dioxide
  - Rationale: Coal gasification with oxygen and steam to produce syngas, followed by water-gas shift and PSA hydrogen purification, is a well-established industrial route. CO2 is a major co-product of both gasification and the shift reaction, so the listed inputs and outputs are correct. The HS codes match: 270112 is bituminous coal (not agglomerated), 280440 is oxygen, 280410 is hydrogen, 281121 is carbon dioxide, and 285100 covers water (in the 2022 HS nomenclature, distilled or conductivity water and similar) and is an acceptable proxy for steam.

**[CORRECT]** Separation of ethane from natural gas via cryogenic low temperature distillation and NGL fractionati
  - Precursors: Natural Gas
  - Products: Ethane (gaseous or liquefied)
  - Rationale: Cryogenic NGL fractionation with a deethanizer column, which takes ethane overhead and sends heavier hydrocarbons to the bottoms, is standard gas-processing practice. Natural gas in the gaseous state (HS 271121) is the correct feed. Ethane is classified under HS 271119 (other liquefied petroleum gases), and gaseous ethane would fall under 271129, so the 'gaseous or liquefied' label is slightly loose but the code is acceptable.

**[CORRECT]** Atmospheric distillation of crude oil to produce straight-run or virgin naphtha (petroleum naphtha).
  - Precursors: Crude petroleum oil
  - Products: Naphtha (petroleum)
  - Rationale: Atmospheric distillation of crude oil to produce straight-run naphtha is a standard refinery operation, and the naphtha can be split into light and heavy cuts. Crude oil is the correct input and naphtha is a correct output. Other co-products such as LPG, kerosene, and diesel are not listed, but that omission does not make the process wrong. HS 270900 is crude petroleum oils, and HS 271012 is light oils and preparations, which covers naphtha, so both codes match.

**[CORRECT]** Thermal or catalytic cracking (e.g., fluid catalytic cracking, visbreaking, or coking) of heavy hydr
  - Precursors: Heavy petroleum oils and fractions (including straight run residue, vacuum gas oil, FCC feedstock, distillation residue)
  - Products: Naphtha (petroleum)
  - Rationale: Thermal and catalytic cracking (FCC, visbreaking, coking) of heavy fractions such as vacuum gas oil and residue is a well-established refinery process that yields lighter products including cracked naphtha. The heavy feedstocks belong under HS 271019 (other petroleum oils, i.e. medium and heavy oils), and naphtha falls under HS 271012 (light oils and preparations). Calling naphtha a by-product is slightly loose, since it is often a main product of FCC, but it does not make the process wrong.

**[CORRECT]** Extraction of propane from natural gas processing through gas separation and distillation to remove 
  - Precursors: Natural Gas
  - Products: Propane (gaseous or liquefied)
  - Rationale: Recovery of propane from natural gas via NGL fractionation (cryogenic separation and distillation in a depropanizer) is a standard, well-documented industrial process. Natural gas (HS 271121, gaseous) is the correct feedstock and propane (HS 271112, liquefied propane) is a correct product, though other NGLs like ethane and butanes are co-produced. Both HS codes match their named commodities.

**[CORRECT]** Production of propane as a by-product during petroleum refining, especially via catalytic cracking a
  - Precursors: Crude Petroleum Oil
  - Products: Propane (gaseous or liquefied)
  - Rationale: Propane is a well-documented by-product of crude oil refining, produced in atmospheric distillation, catalytic cracking (FCC), and reforming, then separated in gas plants and fractionation columns. Crude petroleum oil is the appropriate feedstock, and HS 270900 (petroleum oils, crude) correctly matches it. HS 271112 is the correct code for propane, liquefied, so the input, output, and codes are all consistent.

**[INCORRECT (hs_code_mismatch)]** Separation of butane from natural gas liquids (NGLs) by absorption in light oil followed by fraction
  - Precursors: Natural Gas Liquids (NGLs)
  - Products: Butane (liquefied or gaseous)
  - Rationale: Lean-oil absorption followed by fractionation (a debutanizer) is a real gas-plant method for recovering butane from NGLs, and butane is a valid output. HS 271113 correctly denotes liquefied butanes. However, HS 271112 is liquefied propane, not a general NGL mixture, so the precursor code does not match the name 'Natural Gas Liquids'. A mixed NGL stream would more plausibly fall under 2711.19 or 2709 (condensate).

**[INCORRECT (process_description_inaccuracy)]** Separation of butane from crude oil via petroleum refining using distillation processes, which separ
  - Precursors: Crude Oil
  - Products: Butane (liquefied or gaseous)
  - Rationale: Separating butane from crude oil by distillation in a refinery is real, and HS 270900 (crude petroleum oils) and HS 271113 (butanes, liquefied) are correct codes. However, the description is technically wrong: methane, ethane and propane are not 'other hydrocarbons' separated from butane in atmospheric or vacuum crude distillation columns. Butane is recovered from the light ends in the atmospheric column overhead and gas plant (debutanizer/stabilizer), while vacuum distillation handles heavy residue and does not produce butane. The inputs, outputs and HS codes are acceptable, but the process description contains factual errors.

**[CORRECT]** Enzymatic hydrolysis of potato starch using α-amylase and glucoamylase enzymes to produce glucose sy
  - Precursors: Potato starch
  - Products: Glucose syrup (plant-derived; including corn syrup and starch hydrolysate)
  - Rationale: Enzymatic hydrolysis of starch with α-amylase (liquefaction) and glucoamylase (saccharification), followed by purification and evaporation, is the standard industrial route to glucose syrup and works with potato starch. HS 110813 is potato starch, and HS 170230 covers glucose and glucose syrup (with no or less than 20% fructose), which matches the product. Enzymes and water are auxiliary inputs and their omission does not make the process implausible.

**[CORRECT]** Enzymatic hydrolysis of wheat starch using α-amylase and glucoamylase enzymes to produce glucose syr
  - Precursors: Wheat starch
  - Products: Glucose syrup (plant-derived; including corn syrup and starch hydrolysate)
  - Rationale: Enzymatic hydrolysis of starch with α-amylase (liquefaction) and glucoamylase (saccharification) after gelatinization is the standard industrial route to glucose syrup, and wheat starch is a valid feedstock (wheat-based glucose syrups are produced commercially). HS 1108.11 is wheat starch, and HS 1702.30 covers glucose and glucose syrup with no or less than 20% fructose, so both codes match. Water and enzymes are auxiliary inputs and their omission does not undermine the process.

**[CORRECT]** Pyrite roasting: Roasting of iron pyrite (FeS2) in air to produce sulfur dioxide, followed by conver
  - Precursors: Iron pyrites (unroasted, natural FeS2), Oxygen, Water
  - Products: Sulfuric acid (industrial or laboratory grade, concentrated or dilute), Iron oxide (byproduct)
  - Rationale: Roasting pyrite in air (4FeS2 + 11O2 → 2Fe2O3 + 8SO2), then converting SO2 to H2SO4 by the contact or chamber process, is a classic, well-documented industrial route. The inputs (pyrite, oxygen supplied as air, water) and outputs (sulfuric acid, iron oxide/hematite calcine byproduct) are correct. The HS codes match: 250200 is unroasted iron pyrites, 280440 is oxygen, 285100 covers distilled or conductivity water and other inorganic compounds, 280700 is sulfuric acid, and 282100 is iron oxides.

**[INCORRECT (hs_code_mismatch)]** Production of glucose syrup (corn syrup) from corn (maize) starch involves acid or enzymatic hydroly
  - Precursors: Maize (corn) starch
  - Products: Sugars from plant material (glucose, dextrose, fructose syrups, and hydrolysates)
  - Rationale: Hydrolysis of maize starch to glucose syrup, followed by D-xylose (glucose) isomerase conversion to high-fructose corn syrup, is a well-established industrial process. Maize starch (HS 110812) is a correct input and the syrup products are reasonable outputs. However, HS 170199 covers refined cane or beet sugar (sucrose) in solid form, not glucose or fructose syrups. Those belong under HS 1702, such as 170230, 170240 or 170260, so the product code is wrong.

**[CORRECT]** Manufacture of cobalt(II) acetate by the reaction of cobalt(II) carbonate with acetic acid. The mixt
  - Precursors: Cobalt(II) carbonate, Acetic Acid
  - Products: Cobalt(II) Acetate
  - Rationale: Cobalt(II) carbonate reacts with acetic acid in an acid-carbonate neutralization: CoCO3 + 2 CH3COOH -> Co(CH3COO)2 + H2O + CO2. The product is then crystallized from solution, and this is a standard route to cobalt acetate. The listed inputs and output are correct, and the CO2 and water by-products are trivial to omit. The HS codes fit: 283699 covers other carbonates (including cobalt carbonate), 291521 is acetic acid, and 291529 covers other acetate salts (including cobalt acetate).

**[CORRECT]** Hydrometallurgical recycling of cobalt waste and scrap: Cobalt waste and scrap is leached with acids
  - Precursors: Cobalt waste and scrap
  - Products: Cobalt oxides and hydroxides, Cobalt sulphate, Unwrought cobalt, powders, alloys
  - Rationale: Acid leaching of cobalt scrap (e.g., from batteries, superalloys, carbide) followed by solvent extraction or precipitation to yield cobalt hydroxides/oxides and sulphate, then refining to metal or powder, is a well-documented hydrometallurgical route. HS codes match: 810530 is cobalt waste and scrap, 282200 is cobalt oxides and hydroxides, 283329 is other sulphates (including cobalt sulphate), and 810520 is unwrought cobalt including powders. Inputs and outputs are consistent, with acid and reagents implicit.

**[INCORRECT (duplicate_precursor)]** Wet milling of maize (corn) grains to produce maize starch: In this process, cleaned maize kernels a
  - Precursors: Maize (corn) grain, Maize (corn) grain
  - Products: Maize (corn) starch, Corn gluten (as byproduct), Maize germ (as byproduct), Maize fiber (as byproduct)
  - Rationale: Wet milling of maize to starch is a real, well-documented industrial process (steeping with SO2, grinding, separation of germ, fiber, gluten, and starch). HS 100510 (maize seed for sowing) and 110812 (maize starch) are plausible codes, though 100510 is technically seed rather than the commodity grain (1005.90), and byproducts lack HS codes. The precursor list duplicates maize grain, and water and SO2 are omitted, so the input list is flawed.

**[CORRECT]** Extraction of potato starch by crushing potatoes, releasing starch grains, followed by separation an
  - Precursors: Potatoes (fresh or chilled, excluding seed)
  - Products: Potato starch, Potato pulp (byproduct)
  - Rationale: Potato starch is industrially produced by rasping/crushing potatoes to release starch granules, then separating them from fiber and fruit juice (washing, hydrocyclones, settling), and drying. Fresh potatoes (HS 070190, other than seed, fresh or chilled) are the correct input, and potato starch is HS 110813. The pulp byproduct is real (used as animal feed) and has no specific HS code listed, which is acceptable for a byproduct.

**[CORRECT]** Isolation of wheat starch by wet milling of wheat grains involving steeping, grinding, separation of
  - Precursors: Wheat grain (non-seed, for industrial or food use)
  - Products: Wheat starch, Wheat gluten (byproduct), Bran (byproduct)
  - Rationale: Wet-milling wheat to separate starch and gluten is a real industrial process, though it is usually run on flour by the Martin or batter process rather than on whole grain with steeping. Wheat grain as input and wheat starch, gluten and bran/fiber as outputs are reasonable, and water as a utility input is implicit. HS 100199 (wheat, other than seed and durum) and HS 110811 (wheat starch) match their named materials.

**[CORRECT]** Production of glucose syrup (including corn syrup and starch hydrolysate) from maize (corn) starch v
  - Precursors: Maize (corn) starch, α-amylase enzyme (suggested), glucoamylase enzyme (suggested), Dilute acid catalyst (suggested)
  - Products: Glucose syrup (plant-derived; including corn syrup and starch hydrolysate)
  - Rationale: Glucose syrup production from corn starch via enzymatic (gelatinization, α-amylase liquefaction, glucoamylase saccharification) or acid hydrolysis is a well-documented industrial process. Listed inputs (starch, enzymes, dilute acid) and output (glucose syrup) are correct. HS 110812 is maize starch and HS 170230 is glucose and glucose syrup (no fructose or with less than 20% fructose), both matching; enzymes and acid lacking HS codes is acceptable as they are suggested auxiliaries.

**[CORRECT]** Methane pyrolysis to produce elemental hydrogen and solid carbon. Methane is decomposed at high temp
  - Precursors: Methane (natural gas, gaseous)
  - Products: Hydrogen (elemental, compressed or liquefied), Carbon (solid, technical grade)
  - Rationale: Methane pyrolysis (CH4 -> C + 2H2) is a documented process, with commercial and pilot examples such as molten-metal bubble-column reactors and plasma or thermal reactors. Methane is the sole required feedstock, and hydrogen and solid carbon are the correct products. HS 271121 (natural gas, gaseous), 280410 (hydrogen), and 280300 (carbon blacks and other forms of carbon, n.e.s.) match the named materials.

**[INCORRECT (hs_code_mismatch)]** Biomass gasification for the production of hydrogen. Biomass is converted at high temperatures (with
  - Precursors: Biomass (lignocellulosic residues, or energy crops), Steam (Water) (HS 285100)
  - Products: Hydrogen (elemental, compressed or liquefied)
  - Rationale: Biomass gasification to syngas followed by hydrogen separation (often with water-gas shift) is a real, documented process, and biomass plus steam as inputs and hydrogen as output are reasonable (oxygen/air is optional). Hydrogen at HS 280410 is correct. However, steam/water is assigned HS 285100, which covers distilled/conductivity water and other inorganic compounds (water of similar purity), not steam per se; and biomass has no HS code listed (None), so the precursor codes are incomplete or questionable.

**[CORRECT]** Ammonia cracking (thermal decomposition of ammonia) to produce hydrogen and nitrogen. Ammonia is dec
  - Precursors: Ammonia (anhydrous, liquefied or compressed)
  - Products: Hydrogen (elemental, compressed or liquefied), Nitrogen (elemental, gas)
  - Rationale: Ammonia cracking (2NH3 -> N2 + 3H2) over Ni or Ru catalysts at roughly 500-900 C is a well-documented process used for hydrogen carrier and on-site hydrogen production. Ammonia input matches HS 2814.10 (anhydrous ammonia), hydrogen matches HS 2804.10, and nitrogen matches HS 2804.30. Inputs and outputs are correct; nitrogen is a co-product, and hydrogen is recovered via PSA and then compressed or liquefied.

**[CORRECT]** Industrial production of hydrogen and oxygen from purified water can be achieved using two main tech
  - Precursors: Water (purified), Electricity (electrical energy, not in physical form)
  - Products: Hydrogen (elemental, compressed or liquefied), Oxygen (elemental, gas)
  - Rationale: Water electrolysis and thermochemical water splitting (e.g., sulfur-iodine, copper-chlorine cycles) are both documented routes to hydrogen with oxygen as a co-product. Purified water and electricity are the right inputs for electrolysis. The thermochemical route's heat input is not listed, but its intermediates are recycled, so this is a minor simplification. The HS codes match: 285100 covers distilled/conductivity-grade water, 271600 is electrical energy, 280410 is hydrogen, and 280440 is oxygen.

**[CORRECT]** Hydrometallurgical recycling of cobalt waste and scrap involving leaching with acids (typically sulf
  - Precursors: Cobalt waste and scrap, Sulfuric acid
  - Products: Cobalt metal, Cobalt salts
  - Rationale: Hydrometallurgical recycling of cobalt scrap via sulfuric acid leaching, purification, solvent extraction, and electrowinning or crystallization to cobalt salts is a well-documented industrial route. HS 810530 (cobalt waste and scrap), 810510 (unwrought cobalt, including mattes and powders), and 282200 (cobalt oxides and hydroxides; commercial cobalt oxides) are appropriate for the named materials. Sulfuric acid has no code listed, which is acceptable, though 282200 covers oxides/hydroxides rather than cobalt sulfate (2833.29), a minor looseness in the 'cobalt salts' label.

**[CORRECT]** Crude petroleum oil undergoes a two-stage distillation process to produce heavy petroleum oils and f
  - Precursors: Crude petroleum oils
  - Products: Heavy petroleum oils and fractions (including straight run residue, vacuum gas oil, FCC feedstock, distillation residue)
  - Rationale: Atmospheric distillation followed by vacuum distillation of the atmospheric residue is the standard refinery route. It yields vacuum gas oil (an FCC feedstock) and vacuum residue, so crude oil as the only input and heavy fractions as outputs are correct. HS 270900 is crude petroleum oils, and HS 271019 (other petroleum oils, i.e. medium and heavy oils, gas oils and fuel oils) fits the heavy fractions listed.

**[INCORRECT (missing_precursors_and_hs_mismatch)]** Cultivation of maize grain by planting maize seed (field corn) in fertilized soil with application o
  - Precursors: 
  - Products: Maize (corn) grain, Maize stover (agricultural residue)
  - Rationale: Maize cultivation and shelling is a real agricultural process, and HS 100510 is maize seed for sowing, not general maize grain (which is 100590). The precursor list is empty even though the description names maize seed, fertilizer, and pesticides as inputs. Maize stover is coded as HS 230210, which is actually bran, sharps and other residues from maize milling and not field stover (stover would fall under 121490 or similar forage products), so the output codes are mismatched.

**[INCORRECT (hs_code_invalid_or_nonspecific)]** Cultivation and harvesting of potatoes for fresh consumption involves planting seed potatoes (certif
  - Precursors: Seed Potatoes (for planting, not consumption), Fertilizer, Crop Protection Chemicals
  - Products: Potatoes (fresh or chilled, excluding seed)
  - Rationale: Growing potatoes from seed tubers with fertilizer and crop protection, then harvesting, cleaning and sorting the tubers, is a standard agricultural process. The seed potato code (070110) and the fresh or chilled potato code (070190) are correct. However, HS 310000 is not a valid 6-digit subheading, because Chapter 31 uses headings 3101-3105 and the code is only a chapter-level placeholder. HS 380810 is also obsolete: current HS versions split heading 3808 into 3808.91 (insecticides), 3808.92 (fungicides), 3808.93 (herbicides) and so on. These two codes make the HS mapping inaccurate.

**[INCORRECT (hs_code_mismatch)]** Cultivation, harvesting, and initial processing of wheat grain for industrial or food use. This proc
  - Precursors: Wheat seed (for sowing, not for food use), Fertilizer, Water
  - Products: Wheat grain (non-seed, for industrial or food use)
  - Rationale: Wheat cultivation, harvesting, threshing, cleaning and drying is a real, well-documented agricultural process. Seed (HS 100191, seed of wheat other than durum) and output grain (HS 100199, other wheat) match their names, and fertilizer 310590 is plausible as a mixed or other fertilizer. Water is coded HS 220110, which is mineral and aerated water, not irrigation water. Irrigation water would fall under 220190 or not be traded at all, so this code is a mismatch.

**[CORRECT]** Generation of electricity via combustion of natural gas in a combined cycle power plant (using a gas
  - Precursors: Natural gas
  - Products: Electricity
  - Rationale: Combined cycle gas turbine power generation is a well-established industrial process in which natural gas combustion drives a gas turbine and waste heat produces steam for a steam turbine. HS 271121 is natural gas in gaseous state, and HS 271600 is electrical energy, so both codes match. Air (oxidant) and cooling water are omitted as inputs, but these are ambient and commonly left out, so the listing is acceptable.

**[INCORRECT (hs_code_mismatch_input)]** Generation of electricity using hydroelectric turbines powered by the potential energy of water stor
  - Precursors: Hydraulic energy (Water for hydroelectric power)
  - Products: Electricity
  - Rationale: Conventional hydropower is a real, well-documented process converting the potential energy of stored water into electricity, and electricity is correctly classified under HS 271600. However, the input HS 841013 refers to hydraulic turbines and water wheels of a power exceeding 1,000 kW but not exceeding 10,000 kW (the equipment), not water or hydraulic energy as a commodity. The precursor code therefore does not match the named input, making the HS coding incorrect.

**[CORRECT]** Hydrometallurgical recovery and recycling of cobalt from waste and scrap involves acid leaching to d
  - Precursors: Cobalt waste and scrap
  - Products: Unwrought cobalt or cobalt powders, alloys, Cobalt oxides and hydroxides, commercial cobalt oxides, Cobalt(II,III) oxide (cobalt tetroxide), Others
  - Rationale: Hydrometallurgical cobalt recycling (acid leaching, solvent extraction, then electrowinning or precipitation) is a well-documented industrial route, notably for battery and superalloy scrap. Cobalt waste and scrap is HS 810530, unwrought cobalt and powders is HS 810520, and cobalt oxides and hydroxides is HS 282200, so all three codes match their named materials. Electrowinning gives cobalt metal and precipitation gives oxides or hydroxides, so the listed outputs are consistent with the process.

**[INCORRECT (hs_code_mismatch)]** Production of highly purified water suitable for laboratory and industrial use, utilizing two main p
  - Precursors: Municipal water
  - Products: Water (distilled or deionized, laboratory or industrial grade)
  - Rationale: Distillation and deionization of water are real, well-documented processes, and municipal water is a valid feedstock for producing purified water. However, HS 285300 is 'other inorganic compounds (including distilled or conductivity water and water of similar purity)', so it does not correspond to municipal water, which is untreated potable water and generally not classified in Chapter 28 (natural water is typically not separately classified or falls under 2201 for waters). The product code 285100 is incorrect as well, since distilled/conductivity water belongs in 2853, and 2851 was the old code for distilled water, which was removed in later HS versions. The codes appear to be misassigned or swapped.

**[CORRECT]** Catalytic dehydration of ethanol to produce ethylene. Ethanol vapor is passed over a solid acid cata
  - Precursors: Ethanol (ethyl alcohol)
  - Products: Ethylene (ethene, gaseous or liquefied), Water
  - Rationale: Catalytic dehydration of ethanol to ethylene over alumina or zeolite catalysts at roughly 300-500°C is a well-documented industrial route, used for example in bio-ethylene production. Ethanol is the only required feedstock, and ethylene and water are the correct products. HS 2207.20 (denatured ethyl alcohol) is a reasonable code for ethanol feedstock, and HS 2901.21 is the correct code for ethylene. Water has no HS code listed, which is acceptable for a byproduct.

**[INCORRECT (hs_code_mismatch_input)]** Generation of electricity by harnessing tidal movement through tidal barrage (dam) or tidal stream (
  - Precursors: Tidal movement (potential and kinetic energy of moving water)
  - Products: Electricity
  - Rationale: Tidal power generation is a real, well-documented process (e.g., La Rance barrage, MeyGen tidal stream), and electricity is the correct output. However, the precursor 'tidal movement' is an energy source, not a traded commodity, and HS 841019 refers to hydraulic turbines and water wheels (parts/other, under 8410), i.e., equipment rather than the tidal energy input. The electricity code HS 271600 is correct, but the input code mismatch makes the entry incorrect overall.

**[INCORRECT (hs_code_mismatch_precursor)]** Production of electricity from biomass combustion in thermal power plants, using organic materials (
  - Precursors: Biomass (organic material suitable for combustion)
  - Products: Electricity
  - Rationale: Biomass combustion for power generation is a well-documented industrial process (steam Rankine cycle), and biomass fuel in, electricity out is a correct input/output framing (ash and flue gas are byproducts, not essential to list). Electricity is correctly HS 271600. However, HS 440130 is 'sawdust and wood waste and scrap, agglomerated (pellets, briquettes)', which covers only a narrow subset of biomass. It does not match the generic 'biomass' including agricultural residues and municipal solid waste, so the precursor code is too specific and mismatched.

**[CORRECT]** Cobalt waste and scrap (HS 810530) are recycled via two principal metallurgical processes: (1) Pyrom
  - Precursors: Cobalt waste and scrap, Sulfuric acid, Iron (collector metal, optional), Carbon (reducing agent)
  - Products: Unwrought cobalt or cobalt powders/alloys, Slag waste
  - Rationale: Both routes are documented industrial practice for cobalt scrap. Pyrometallurgy uses electric furnace smelting with carbon and an optional iron collector to give a cobalt alloy or matte plus slag. Hydrometallurgy uses sulfuric acid leaching, solvent extraction and electrowinning to give cobalt metal or powder. The HS codes fit: 810530 is cobalt waste and scrap, 810520 covers unwrought cobalt, powders and mattes, 280700 is sulfuric acid, 720529 is iron powder, 280300 is carbon, and 262190 is other slag and ash. Slag under 262190 and carbon under 280300 are slightly loose but acceptable.
