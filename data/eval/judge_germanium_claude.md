# MEKH Process Factual Accuracy — LLM-as-Judge Report

Generated: 2026-09-28 19:51 UTC
Judge model: `claude-cli:claude-sonnet-5-5`

## Summary

| Condition | Processes | Overall correct | Process plausible | I/O correct | HS codes correct |
|-----------|----------:|----------------:|------------------:|------------:|-----------------:|
| germanium | 63 | 28/63 (44.4%) | 62/63 (98.4%) | 56/63 (88.9%) | 30/63 (47.6%) |

## Precision proxy

Precision proxy = (overall correct) / (total judged)

- **germanium**: 0.444

## Error modes

### germanium
- `hs_code_mismatch`: 25
- `input_definition_and_hs_mismatch`: 1
- `missing_precursors`: 1
- `incomplete_outputs_and_hs_mismatch`: 1
- `missing_hs_codes`: 1
- `incorrect_process_chemistry_and_duplicate_input`: 1
- `hs_code_mismatch_product`: 1
- `incomplete_inputs_and_wrong_hs_code`: 1
- `incorrect_product_hs_code`: 1
- `hs_code_mismatch_and_mischaracterized_products`: 1
- `hs_code_mismatch_precursor`: 1

## Per-process details

### germanium

**[CORRECT]** Reduction of germanium dioxide with carbon to produce elemental germanium metal
  - Precursors: Germanium dioxide, Carbon (carbon blacks and other forms of carbon)
  - Products: Germanium metal, unwrought
  - Rationale: Carbothermic reduction of GeO2 (GeO2 + C → Ge + CO2, or GeO2 + 2C → Ge + 2CO) is a documented route to crude germanium metal, though hydrogen reduction is more common for high-purity material. The inputs (GeO2 and carbon) and the product (germanium metal) are correct, and the CO/CO2 byproduct is not a significant omission. HS 282560 (germanium oxides and zirconium dioxide), 280300 (carbon blacks and other forms of carbon), and 811292 (unwrought germanium and other listed metals) match their names.

**[CORRECT]** Oxidation of elemental germanium in air or oxygen at elevated temperatures produces germanium dioxid
  - Precursors: Elemental germanium
  - Products: Germanium dioxide
  - Rationale: Heating germanium metal in air or oxygen forms GeO2 (Ge + O2 → GeO2). This is a documented reaction, used for example to convert germanium scrap or metal to oxide, although the main industrial route is hydrolysis of GeCl4. Oxygen or air is a ubiquitous reagent and is reasonably left out of the precursor list. HS 811292 covers unwrought germanium and powders, and HS 282560 covers germanium oxides and zirconium dioxide, so both codes match.

**[INCORRECT (hs_code_mismatch)]** Generation of germanium scrap, powder, and wrought forms as by-products from the machining, cutting,
  - Precursors: Unwrought germanium (primary germanium)
  - Products: Germanium waste and scrap, powders, and wrought forms
  - Rationale: Machining or cutting unwrought germanium does produce swarf, scrap, and some powder, and the process is plausible. The input code 811292 (unwrought; waste and scrap; powders of germanium and similar metals) fits the unwrought germanium. The product code is wrong for most of the output: waste, scrap, and powders are classified in 811292, while 811299 covers only 'other' items such as wrought articles. The product name lumps scrap and powders together with wrought forms under 811299, so the code does not match the name.

**[CORRECT]** Direct chlorination of germanium metal to produce germanium tetrachloride.
  - Precursors: Germanium (unwrought, including powder), Elemental chlorine (compressed gas or liquefied)
  - Products: Germanium tetrachloride (GeCl4)
  - Rationale: Direct chlorination of germanium metal (Ge + 2Cl2 → GeCl4) is a well-documented route to germanium tetrachloride, the precursor for optical fiber and high-purity germanium. The inputs (germanium and chlorine) and the single product are correct. The HS codes fit: 811292 covers unwrought germanium and powders, 280110 is chlorine, and 281219 is 'other chlorides and chloride oxides of non-metals', which is where GeCl4 is classified.

**[INCORRECT (input_definition_and_hs_mismatch)]** Furnace black process: Incomplete combustion of petroleum or coal tar distillates (liquid or gaseous
  - Precursors: Petroleum distillates (not crude, not waste oils), Petroleum distillates (not crude, not waste oils)
  - Products: Carbon black
  - Rationale: The furnace black process is a real, well-documented industrial process (partial combustion/thermal cracking of aromatic oils in a refractory-lined reactor), and carbon black is correctly classified under HS 280300. However, the feedstock is listed twice as an identical duplicate input, and HS 271012 (light oils and preparations) is a poor match, since furnace black feedstocks are heavy aromatic oils such as FCC decant oil, ethylene cracker tar, or coal tar creosote oil (HS 2707/2710 19/2706). The description also omits the air/oxygen input and the process is more accurately thermal-oxidative cracking than simple incomplete combustion.

**[CORRECT]** Thermal black process: Pyrolysis (thermal decomposition in absence of air) of hydrocarbons in contac
  - Precursors: Natural gas (gaseous form)
  - Products: Carbon black
  - Rationale: The thermal black process is a well-documented industrial method in which natural gas is cyclically pyrolyzed over heated refractory checker-brick to produce carbon black, with hydrogen as a byproduct. Natural gas in gaseous state is HS 271121 and carbon black is HS 280300, so both codes match. The omission of hydrogen as a co-product is minor and does not make the main transformation incorrect.

**[CORRECT]** Lamp black process: Incomplete combustion of oils (typically coal tar oils) in shallow pans or furna
  - Precursors: Coal tar oil
  - Products: Carbon black
  - Rationale: The lamp black process is a real, historically documented method in which oils (including coal tar oils and creosote-type oils) are burned incompletely in shallow pans under restricted air to yield soot collected as carbon black. HS 270600 covers tar distilled from coal, lignite or peat (including coal tar oils), and HS 280300 covers carbon (carbon blacks and other forms of carbon), so both codes match the named materials. Inputs and outputs are consistent; air is implicit as an oxidant and does not make the description implausible.

**[INCORRECT (hs_code_mismatch)]** Acetylene black process: Pyrolysis (thermal decomposition) of acetylene gas in the absence of air in
  - Precursors: Acetylene gas (C2H2), industrial/commercial grade
  - Products: Carbon black
  - Rationale: Acetylene black production by thermal decomposition of acetylene without air is a real, well-documented industrial process, and acetylene as input with carbon black as output is correct. However, HS 290122 is propene (propylene), not acetylene, which falls under HS 290129 (other unsaturated acyclic hydrocarbons). The carbon black code 280300 is correct, but the precursor code mismatch makes the entry incorrect.

**[CORRECT]** Direct synthesis of hydrochloric acid by burning hydrogen and chlorine to form hydrogen chloride gas
  - Precursors: Hydrogen gas (compressed or liquefied, high-purity), Chlorine
  - Products: Hydrochloric acid (aqueous hydrogen chloride)
  - Rationale: Burning H2 in Cl2 to form HCl gas (H2 + Cl2 → 2HCl) followed by absorption in water is the standard synthetic HCl route used for high-purity acid. HS 2804.10 is hydrogen, 2801.10 is chlorine, and 2806.10 is hydrogen chloride (hydrochloric acid), so all codes match. Inputs and outputs are complete; the water is a minor auxiliary input and does not make the process implausible.

**[INCORRECT (missing_precursors)]** Absorption of by-product hydrogen chloride gas (from other industrial chemical production processes,
  - Precursors: 
  - Products: Hydrochloric acid (aqueous hydrogen chloride)
  - Rationale: Absorption of by-product HCl gas into water is a real, widely used industrial route, and HS 280610 is correct for hydrogen chloride (hydrochloric acid). However, the precursor list is empty, so the required inputs (by-product hydrogen chloride gas and water) are missing, which makes the process record incomplete as specified.

**[CORRECT]** Production of elemental chlorine by oxidation of hydrogen chloride with oxygen (Deacon process), typ
  - Precursors: Hydrogen chloride (gas), Oxygen gas (compressed or liquefied, high-purity)
  - Products: Elemental chlorine (compressed gas or liquefied), Water
  - Rationale: The Deacon process (4 HCl + O2 → 2 Cl2 + 2 H2O) is a well-documented industrial reaction. It uses Ru-based catalysts (e.g., Sumitomo's RuO2) or Cu-based catalysts. The inputs (HCl, O2) and outputs (Cl2, water) match the stoichiometry. The HS codes fit: 280610 is hydrogen chloride, 280440 is oxygen, 280110 is chlorine, and 285100 covers water (distilled/conductivity and other inorganic compounds), which is acceptable for the water byproduct.

**[CORRECT]** Production of elemental chlorine by electrolysis of aqueous sodium chloride (brine) using one of thr
  - Precursors: Sodium chloride (brine), Water
  - Products: Elemental chlorine (compressed gas or liquefied), Sodium hydroxide (caustic soda, including mercury grade), Hydrogen (compressed gas)
  - Rationale: Chloralkali electrolysis of brine in membrane, diaphragm, or mercury (Castner–Kellner) cells is a well-documented industrial process. It co-produces chlorine, sodium hydroxide, and hydrogen from NaCl and water. The HS codes match: 250100 (salt/sodium chloride), 285100 (distilled/conductivity water), 280110 (chlorine), 281512 (sodium hydroxide in aqueous solution), and 280410 (hydrogen).

**[INCORRECT (hs_code_mismatch)]** Extraction of germanium from coal fly ash by acid leaching followed by purification and conversion t
  - Precursors: Coal ash and residues containing germanium for extraction
  - Products: Germanium tetrachloride, Germanium dioxide, Germanium (unwrought, including waste and scrap, powders)
  - Rationale: Recovering germanium from coal fly ash by acid leaching, purifying it, chlorinating to GeCl4 (distillation), hydrolyzing to GeO2, and reducing with hydrogen to germanium metal is the standard industrial route. The inputs and outputs are consistent, and the codes for the ash (262099), GeCl4 (282739, other chlorides) and unwrought germanium (811292) are plausible. However, germanium dioxide is classified under HS 282560 (germanium oxides and zirconium dioxide), not the residual 282590 (other oxides), so that code is wrong.

**[INCORRECT (hs_code_mismatch)]** Germanium dioxide (GeO2) can be sustainably recovered from end-of-life germanium-containing products
  - Precursors: End-of-life germanium-containing products for recycling, Sulfuric acid (or hydrochloric acid, where applicable), Chlorine
  - Products: Germanium dioxide (GeO2), Solid waste for disposal
  - Rationale: Germanium recovery from scrap via leaching, pyrometallurgical volatilization, or chlorination to GeCl4 followed by hydrolysis to GeO2 is a real, documented route. However, HS 281216 is the code for sulfur-containing/other chlorides (chloride oxides? specifically 'thionyl chloride' under 2812.17 or phosphorus/sulfur chlorides), not sulfuric acid, which is HS 280700 (hydrochloric acid is 280610). Also HS 280110 is chlorine (correct), 282560 is germanium oxides and zirconium dioxide (correct), and 854990 for scrap of electrical parts is plausible, but the sulfuric acid code is wrong, so the HS codes are not all accurate.

**[INCORRECT (incomplete_outputs_and_hs_mismatch)]** Hydrolysis of germanium tetrachloride to germanium dioxide using deionized water, followed by purifi
  - Precursors: Germanium tetrachloride (GeCl4), Deionized water
  - Products: Germanium dioxide, Hydrochloric acid (recovered)
  - Rationale: Hydrolysis of GeCl4 to GeO2 with HCl byproduct, followed by hydrogen reduction to germanium metal, is the standard industrial route for producing germanium, so the process is plausible. However, the description ends with germanium metal, and hydrogen (the reductant) is not listed as an input while germanium metal is not listed as an output; the outputs only list GeO2 and HCl. HS codes are also problematic: 281219 covers 'other chlorides and chloride oxides of non-metals' (acceptable for GeCl4), but 282560 is 'germanium oxides and zirconium dioxide' (acceptable for GeO2), while the recovered HCl and deionized water lack codes, so the HS set is incomplete (HCl would be 280610). The missing hydrogen input and germanium metal output are the main errors.

**[CORRECT]** Atmospheric and vacuum distillation of crude oil to separate major petroleum distillates (not crude,
  - Precursors: Crude petroleum oil
  - Products: Petroleum Distillates (not crude, not waste oils)
  - Rationale: Atmospheric and vacuum distillation of crude oil is the core refinery step, and it yields naphtha, kerosene, and light and middle distillates. Crude petroleum oil is correctly coded HS 270900. HS 271012 (light oils and preparations) sits under heading 2710 (petroleum oils, not crude), and it plausibly matches the light distillate fraction such as naphtha. It is narrower than the product name, since kerosene and middle distillates fall under 271019, but the code is in the right commodity family.

**[CORRECT]** Thermal and catalytic cracking of heavier fractions from crude oil distillation to produce lighter p
  - Precursors: Heavy gas oils (from crude oil distillation)
  - Products: Petroleum Distillates (not crude, not waste oils)
  - Rationale: Thermal and catalytic cracking (e.g., FCC, hydrocracking, visbreaking) of heavy gas oils into lighter products such as naphtha is a standard refinery operation. Heavy gas oil is a suitable feed, and light distillates like naphtha are real products, though hydrogen or catalyst inputs are not listed, which is a minor omission. HS 271019 (other medium/heavy petroleum oils) fits heavy gas oil, and HS 271012 (light oils and preparations, including naphtha) fits the light distillate product.

**[INCORRECT (hs_code_mismatch)]** Production of coal tar oil by destructive distillation of bituminous coal. Coal is heated in the abs
  - Precursors: Bituminous coal (non-agglomerated)
  - Products: Coal Tar Oil, Coke (fuel), Coal gas (ammonia, light oils), Coal tar pitch
  - Rationale: Coke-oven pyrolysis of bituminous coal to coke, coal tar, coal gas and ammonia, followed by fractional distillation of the tar into oils and pitch, is a real, well-documented process. The inputs and outputs are consistent with it, and bituminous coal, not agglomerated, correctly maps to HS 270112. However, HS 2706 covers tar distilled from coal (the crude tar itself), while oils from the distillation of high-temperature coal tar, such as creosote and carbolic oils, fall under HS 2707. The code 270600 therefore does not match coal tar oil. Coke (2704), coal gas (2705) and pitch (2708) also have HS codes that were left unassigned.

**[INCORRECT (hs_code_mismatch)]** Hydrolysis of calcium carbide with water to produce acetylene gas (C2H2) and calcium hydroxide. This
  - Precursors: Calcium carbide (CaC2), technical/industrial grade, Water
  - Products: Acetylene gas (C2H2), industrial/commercial grade, Calcium hydroxide
  - Rationale: Hydrolysis of calcium carbide (CaC2 + 2H2O → C2H2 + Ca(OH)2) is a well-documented traditional acetylene process, and the listed inputs and outputs are correct. HS 284910 correctly denotes calcium carbide. However, HS 290122 is propene (propylene), not acetylene, which falls under 290129 (other unsaturated acyclic hydrocarbons), so the product code is wrong.

**[INCORRECT (hs_code_mismatch)]** Contact process for sulfuric acid production: Burning elemental sulfur to produce sulfur dioxide, ca
  - Precursors: Sulfur (sublimed, precipitated, or colloidal), Oxygen
  - Products: Sulfuric acid; oleum
  - Rationale: The contact process is a real, well-documented industrial route: sulfur is burned in oxygen (air) to SO2, oxidized over a V2O5 catalyst to SO3, and absorbed to make sulfuric acid (industrially in 98% H2SO4 or oleum, not directly in water). Sulfur and oxygen are valid inputs, and sulfuric acid/oleum is the correct product. HS 280700 (sulfuric acid; oleum) and HS 280440 (oxygen) are correct, but HS 280200 covers sublimed, precipitated or colloidal sulfur, whereas the process uses ordinary elemental sulfur (crude or refined, HS 250300 for sulfur of all kinds), so the sulfur code is a mismatch.

**[INCORRECT (hs_code_mismatch)]** A process for producing elemental germanium metal from crude germanium dioxide (GeO2) involves sever
  - Precursors: Germanium oxides and zirconium dioxide, Hydrogen
  - Products: Germanium, unwrought including waste and scrap and powders, Water
  - Rationale: The route is real: GeO2 is chlorinated with HCl to GeCl4, distilled, hydrolyzed to pure GeO2, then reduced with H2 at about 650 °C to germanium and water. The net inputs (GeO2, H2) and outputs (Ge, H2O) are correct. HS 282560 (germanium oxides) and 280410 (hydrogen) match. But HS 811299 is the residual 'other' heading under 8112, covering other articles, not unwrought germanium, waste, scrap and powders, so the product code does not match its name. Water at 220190 is also a loose fit for process water.

**[INCORRECT (hs_code_mismatch)]** Production of acetylene gas (C2H2) from methane via two related industrial processes: (1) Partial co
  - Precursors: Methane, Oxygen
  - Products: Acetylene gas (C2H2), industrial/commercial grade, Carbon monoxide, Water, Hydrogen
  - Rationale: Partial oxidation of methane (as in the BASF process) and thermal or plasma cracking of methane both produce acetylene, with CO, H2 and H2O as byproducts, so the process and its inputs and outputs are plausible. The precursor codes are correct: 271121 for natural gas/methane and 280440 for oxygen. Several product codes are wrong: 290122 is propene (acetylene is 290129), 282410 is lead monoxide (carbon monoxide is 281129), and 284510 is heavy water (ordinary water is not classified there). Only hydrogen, 280410, is correct.

**[INCORRECT (missing_hs_codes)]** Chemical leaching and chlorination of separated germanium glass and metal to produce germanium tetra
  - Precursors: Germanium-bearing glass fragments, Germanium metal components
  - Products: Germanium tetrachloride (GeCl4)
  - Rationale: Chlorination of germanium-bearing scrap (glass from optics/fiber and metal) with HCl/Cl2 to produce volatile GeCl4, which is then distilled and purified, is a well-documented industrial route for germanium recovery and refining. The inputs and output are chemically sensible, although a chlorine or HCl reagent is not listed. All three materials have HS code None, so no 6-digit code can be checked against the material names (for example, germanium unwrought/waste 8112.92 or 8112.99, and germanium tetrachloride under 2812.19), so the HS criterion is not satisfied.

**[INCORRECT (hs_code_mismatch)]** Production of hydrogen gas (compressed or liquefied, high-purity) by steam methane reforming (SMR). 
  - Precursors: Methane (natural gas), Water, including steam (for industrial use)
  - Products: Hydrogen gas (compressed or liquefied, high-purity), Carbon dioxide (byproduct, usually vented or captured)
  - Rationale: Steam methane reforming with a water-gas shift step is a real, dominant industrial route to hydrogen. Methane and steam are the correct inputs, and hydrogen with CO2 as a byproduct are the correct outputs. The CO2 code is wrong: HS 281111 is hydrogen fluoride (hydrofluoric acid), while carbon dioxide is HS 281121. The other codes are acceptable: 271121 (natural gas, gaseous), 285100 (water and other inorganic compounds), and 280410 (hydrogen).

**[CORRECT]** Production of hydrogen gas (compressed or liquefied, high-purity) via water electrolysis. Water is s
  - Precursors: Water, Electricity (electrical energy, as a traded commodity)
  - Products: Hydrogen gas (compressed or liquefied, high-purity), Oxygen (byproduct, compressed or vented)
  - Rationale: Water electrolysis (PEM, alkaline or SOEC) is a well-established industrial process that splits water into hydrogen and oxygen using electricity. Water and electricity are the correct inputs, and hydrogen with oxygen as a byproduct are the correct outputs. The HS codes match: 285100 covers distilled/conductivity water and other inorganic compounds, 271600 is electrical energy, 280410 is hydrogen and 280440 is oxygen.

**[INCORRECT (hs_code_mismatch)]** Production of hydrogen gas (compressed or liquefied, high-purity) by coal gasification (including ga
  - Precursors: Coal (other than anthracite and bituminous, non-agglomerated, including lignite and coke-coal blends), Steam (water), Oxygen
  - Products: Hydrogen gas (compressed or liquefied, high-purity), Carbon dioxide
  - Rationale: Coal gasification with steam and oxygen to produce syngas, followed by purification and hydrogen separation, is a well-documented industrial route, and CO2 is a real co-product. The inputs and outputs are reasonable. However, carbon dioxide is coded as HS 281111, which is hydrogen fluoride; the correct code is 281121. The other codes are acceptable: 270119 for other coal, 280440 for oxygen, 280410 for hydrogen, and 285100 for water, which is loose for steam.

**[INCORRECT (hs_code_mismatch)]** Production of hydrogen gas (compressed or liquefied, high-purity) by partial oxidation of hydrocarbo
  - Precursors: Hydrocarbon feedstock (naphtha, fuel oil, or similar), Oxygen
  - Products: Hydrogen gas (compressed or liquefied, high-purity), Carbon monoxide, Carbon dioxide
  - Rationale: Partial oxidation of naphtha, fuel oil or heavier fractions with sub-stoichiometric oxygen to make syngas, then purifying the hydrogen, is a well-established industrial process. The inputs and outputs are appropriate, with syngas containing CO and CO2 alongside H2. However, the HS codes for two products are wrong: 282410 is lead monoxide, not carbon monoxide (which falls under 281129), and 281111 is hydrogen fluoride, not carbon dioxide (which is 281121). Hydrogen 280410, oxygen 280440 and naphtha 271012 are acceptable.

**[CORRECT]** Production of heavy gas oils by atmospheric distillation of crude oil in a refinery. Crude oil is he
  - Precursors: Crude Oil
  - Products: Heavy Gas Oils (from crude oil distillation)
  - Rationale: Atmospheric distillation of crude oil into fractions, including heavy gas oil as a side-cut, is a standard refinery operation. Crude oil (HS 270900) is the correct input. Heavy gas oils fall under HS 271019 (medium oils and preparations, other than light oils, of petroleum), which is a plausible classification, so the process, inputs/outputs, and HS codes are consistent.

**[CORRECT]** Production of heavy gas oils (principally vacuum gas oil) by vacuum distillation of atmospheric resi
  - Precursors: Atmospheric residue from crude oil (long residue, refinery bottoms, heavy residue)
  - Products: Heavy Gas Oils (from crude oil distillation)
  - Rationale: Vacuum distillation of atmospheric residue (long residue) to produce vacuum gas oil is a standard refinery operation. The input is atmospheric residue, and the outputs are VGO plus a vacuum residue, which the description leaves implicit but does not contradict. HS 271390 (other residues of petroleum oils) plausibly covers atmospheric residue, and HS 271019 (other petroleum oils, including heavy oils and gas oils) fits heavy gas oil. Atmospheric residue is sometimes traded as fuel oil under 271019, so the input code is slightly ambiguous but acceptable.

**[INCORRECT (hs_code_mismatch)]** Industrial production of calcium carbide by reacting lime (calcium oxide) with coke in an electric a
  - Precursors: Coke (coal-derived, metallurgical/industrial grade), Lime (Calcium oxide, quicklime), Coke (pitch coke; obtained from coal tar or other mineral tars)
  - Products: Calcium carbide (CaC2), technical/industrial grade, Carbon monoxide, Carbon monoxide, Carbon monoxide
  - Rationale: The core process (CaO + 3C → CaC2 + CO in an electric arc furnace at ~2000-2200°C) is real and well documented. However, the HS codes are wrong in several places: 270820 (pitch coke) is not the typical carbon source (metallurgical coke/petroleum coke is), and carbon monoxide is listed with duplicate entries, including 282410 (which is the code for carbon monoxide only in the sense of lead oxides? actually 2824 is lead oxides) and 281121 (carbon dioxide). Carbon monoxide is properly classified under 281129, so 282410 and 281121 are mismatches. Also 284910 for calcium carbide and 252210 for quicklime are correct, and 270400 for coke is correct.

**[INCORRECT (hs_code_mismatch)]** Production of precipitated sulfur by reduction of sulfur dioxide with hydrogen sulfide in aqueous so
  - Precursors: Sulfur dioxide (SO2), industrial/commercial grade, Hydrogen sulfide (H2S), commercial grade
  - Products: Sulfur (sublimed, precipitated, or colloidal)
  - Rationale: The reaction SO2 + 2H2S -> 3S + 2H2O (the Claus reaction, run in aqueous solution as in the Wackenroder-type route) is real and gives finely divided sulfur, so the process and its inputs and outputs are sound. However, HS 281119 is 'other inorganic acids', whereas sulfur dioxide is classified under 2811.29 (other inorganic oxygen compounds of non-metals). HS 281410 is anhydrous ammonia, not hydrogen sulfide, which falls under 2811.19. Only the sulfur code 280200 is correct.

**[CORRECT]** Generation of electricity by combustion of coal in a thermal power station. Coal is burned to heat w
  - Precursors: Coal
  - Products: Electricity, Fly ash (from coal combustion)
  - Rationale: Coal-fired steam-turbine power generation is a standard, well-documented process. Coal is the main fuel input, and electricity and fly ash are real outputs, though water, air and CO2/bottom ash are not listed. The HS codes match: 270112 is bituminous coal, 271600 is electrical energy, and 262190 covers other slag and ash, which includes coal fly ash.

**[CORRECT]** Generation of electricity by combustion of natural gas in a combined-cycle gas turbine power plant. 
  - Precursors: Natural Gas
  - Products: Electricity
  - Rationale: Combined-cycle gas turbine power generation is a well-documented process in which natural gas fuels a gas turbine and the exhaust heat drives a steam turbine. Natural gas in gaseous state is HS 271121, and electrical energy is HS 271600. Air (oxygen) is an omitted input, but it is ambient and commonly not listed, so the inputs and outputs are acceptable.

**[CORRECT]** Generation of electricity in a nuclear power plant by nuclear fission. Uranium fuel undergoes fissio
  - Precursors: Uranium ores and concentrates
  - Products: Electricity
  - Rationale: Nuclear fission heating water to steam that drives turbine generators is a well-documented way to generate electricity. Uranium ore and concentrates (HS 261210) are the ultimate source of the fuel, and electricity is correctly output. This is a simplification, because the ore must first be converted, enriched and fabricated into fuel, and coolant and moderator water are not listed. HS 261210 (uranium ores and concentrates) and HS 271600 (electrical energy) both match their names.

**[CORRECT]** Generation of electricity by combustion of biomass in a biomass power plant. Solid, liquid, or gaseo
  - Precursors: Wood pellets (densified wood fuel)
  - Products: Electricity
  - Rationale: Biomass combustion in a power plant to generate electricity is a well-documented process, and wood pellets are a standard fuel. HS 440131 is wood pellets and HS 271600 is electrical energy, so both codes match. Air/oxygen input and ash/flue gas outputs are omitted, but these are conventional simplifications and do not make the process implausible.

**[INCORRECT (incorrect_process_chemistry_and_duplicate_input)]** Extraction of germanium from coal ash and residues by leaching with sulfuric acid to dissolve german
  - Precursors: Coal ash and residues containing germanium for extraction, Sulfuric acid, Elemental chlorine (compressed gas or liquefied), Elemental chlorine (compressed gas or liquefied)
  - Products: Germanium dioxide, Leach residue (waste)
  - Rationale: Sulfuric acid leaching of germanium-bearing coal ash is real, and GeO2 is a real end product. However, germanium(IV) is already fully oxidized, so oxidizers such as chlorine or sodium chlorate do not precipitate GeO2. Industry instead uses tannin precipitation, solvent extraction, or chlorination with HCl/Cl2 to distill GeCl4, which is then hydrolyzed to GeO2. The precursor list also repeats chlorine twice and omits the sodium chlorate named in the description, and it omits the HCl and water that a chlorination-hydrolysis route would need. The HS codes are plausible: 262099 (ash containing metals), 280700 (sulfuric acid), 280110 (chlorine), 282560 (germanium oxides), and 262190 (other slag and ash).

**[INCORRECT (hs_code_mismatch_product)]** Germanium dioxide or germanium oxides (HS 282560), typically extracted from coal ash or fly ash, are
  - Precursors: Germanium dioxide or oxides, Concentrated hydrochloric acid
  - Products: Germanium tetrachloride
  - Rationale: Converting GeO2 with concentrated HCl to GeCl4 (GeO2 + 4HCl -> GeCl4 + 2H2O), followed by fractional distillation and hydrolysis back to high-purity GeO2, is the standard industrial route for optical-fiber and semiconductor grade germanium. The inputs and output are chemically correct. The precursor codes match: HS 282560 covers germanium oxides and HS 280610 covers hydrogen chloride. The product code does not: HS 282510 covers hydrazine and hydroxylamine and their inorganic salts, whereas germanium tetrachloride belongs under HS 2827 (other chlorides, e.g. 282739).

**[INCORRECT (incomplete_inputs_and_wrong_hs_code)]** Generation of electricity from renewable energy sources including hydropower, wind, and solar photov
  - Precursors: Water (for hydropower generation)
  - Products: Electricity
  - Rationale: Renewable electricity generation from hydro, wind, and solar is a real, well-documented process. However, the only listed precursor is water (hydropower), omitting wind and sunlight (and equipment) even though the description covers all three sources, so the inputs are inconsistent with the process. HS 285100 covers other inorganic compounds, including distilled/conductivity water, not natural flowing water used in hydropower, so the input code is a poor match; the output code 271600 (electrical energy) is correct.

**[CORRECT]** Reduction of germanium dioxide with hydrogen gas to produce elemental germanium
  - Precursors: Germanium dioxide, Hydrogen
  - Products: Elemental Germanium
  - Rationale: Hydrogen reduction of GeO2 (GeO2 + 2H2 -> Ge + 2H2O, at about 600-900 °C) is the standard industrial route to elemental germanium, used after hydrolysis of GeCl4 to purify the oxide. The inputs are correct, and the water byproduct is a minor omission. HS 282560 (germanium oxides and zirconium dioxide) and 280410 (hydrogen) match. 811299 sits under the HS 8112 heading for germanium and other metals; 811292 (unwrought, powders) would be more precise for raw germanium, but 811299 is acceptable.

**[CORRECT]** Production of germanium tetrachloride (GeCl4) by dissolving germanium dioxide (GeO2) in concentrated
  - Precursors: Germanium dioxide, Hydrogen chloride (hydrochloric acid)
  - Products: Germanium tetrachloride (GeCl4)
  - Rationale: GeO2 dissolves in concentrated HCl (about 10-12 M) to form GeCl4 (GeO2 + 4HCl -> GeCl4 + 2H2O). GeCl4 boils at about 83 °C, so it is routinely purified by fractional distillation, as in the production of optical-fiber-grade GeCl4. The HS codes fit: 2825.60 covers germanium oxides, 2806.10 covers hydrogen chloride, and 2812.19 is the residual heading for chlorides of other non-metals, which includes GeCl4. The only omission is water as a byproduct, which is minor.

**[INCORRECT (hs_code_mismatch)]** Leaching and extraction of germanium from coal ash or fly ash through acid leaching (using hydrochlo
  - Precursors: Coal ash and residues containing germanium for extraction, Hydrochloric acid, Sulfuric acid
  - Products: Germanium dioxide
  - Rationale: Germanium recovery from coal fly ash by acid leaching, followed by solvent extraction or precipitation and then GeCl4 distillation and hydrolysis to GeO2, is a real and documented process. The inputs and output are reasonable. However, several HS codes do not match. HS 280700 is sulfuric acid, which is correct, and HS 280610 is hydrogen chloride (hydrochloric acid), which is also correct. HS 262099 covers other slag, ash and residues containing metals, which is generally acceptable, but germanium dioxide is properly classified under HS 282560 (germanium oxides and zirconium dioxide), not 282590 (other inorganic bases, metal oxides, hydroxides and peroxides). This makes the product code wrong.

**[INCORRECT (hs_code_mismatch)]** Chemical chlorination and distillation of end-of-life germanium-containing products to produce purif
  - Precursors: End-of-life germanium-containing products for recycling
  - Products: Germanium Tetrachloride, Germanium Dioxide
  - Rationale: Germanium recycling via chlorination (HCl/Cl2) and fractional distillation to GeCl4, followed by hydrolysis to GeO2 or reduction to Ge, is a real, well-documented industrial route. The inputs and outputs are reasonable. However, HS 854990 covers parts of electrical scrap/waste of heading 8549 (electronic waste), which is a broad category and only loosely matches 'germanium-containing products'; and Germanium Tetrachloride is listed without an HS code, though it would fall under 2812.12/2812.19 (halides of non-metals) or 2827 (chlorides), so the HS coding is incomplete. GeO2 at 282560 is correct (germanium oxides and zirconium dioxide).

**[CORRECT]** Production of high-purity oxygen gas (compressed or liquefied) via cryogenic fractional distillation
  - Precursors: Atmospheric Air, Electric Power
  - Products: Oxygen gas (compressed or liquefied, high-purity), Nitrogen (compressed or liquefied, high-purity), Argon (compressed or liquefied, high-purity)
  - Rationale: Cryogenic fractional distillation of air (an air separation unit) is the standard industrial method for producing high-purity oxygen, nitrogen and argon. Air and electric power are the essential inputs, and O2, N2 and Ar are the co-products. The HS codes match: 280440 is oxygen, 280430 is nitrogen, 280421 is argon, 271600 is electrical energy, and 285100 covers liquid and compressed air, which is an acceptable proxy for the air feed.

**[INCORRECT (hs_code_mismatch)]** Industrial production of calcium oxide (quicklime) by calcination of limestone (calcium carbonate) i
  - Precursors: Limestone (calcium carbonate, CaCO3), natural/raw (industrial/flux grade)
  - Products: Calcium oxide (quicklime), industrial/technical grade, Carbon dioxide (byproduct, gas)
  - Rationale: Calcination of limestone (CaCO3 → CaO + CO2) above about 825°C in a lime kiln is a standard industrial process, and the input and outputs are correct. The limestone code 252100 is correct. Industrial quicklime belongs under HS 252210, not 282590, which covers other metal oxides. Carbon dioxide is HS 281121, while 281119 is 'other inorganic acids', so the CO2 code is also wrong.

**[INCORRECT (hs_code_mismatch)]** Roasting of metal sulfide ores (such as pyrite, FeS2) in air to produce sulfur dioxide gas for indus
  - Precursors: Unroasted iron pyrites (natural pyrite ore), Air (oxygen source)
  - Products: Sulfur dioxide (SO2), industrial/commercial grade, Iron(III) oxide (Fe2O3)
  - Rationale: Roasting pyrite in air (4FeS2 + 11O2 -> 2Fe2O3 + 8SO2) is a well-documented industrial process, and the listed inputs and outputs are correct. HS 250200 (unroasted iron pyrites) and 282110 (iron oxides and hydroxides) match their materials. However, HS 281119 is 'other inorganic acids' and does not cover sulfur dioxide, which falls under 281129 (other inorganic oxygen compounds of non-metals).

**[CORRECT]** Industrial production of wood pellets by compression of sawdust or wood shavings. The raw material i
  - Precursors: Sawdust or wood shavings (not agglomerated, for fuel or other use)
  - Products: Wood pellets (densified wood fuel)
  - Rationale: Pelletizing dried, milled sawdust or shavings in a die press is a standard industrial process, where heat and pressure soften lignin, which then binds the particles as the pellets cool. The input (sawdust or shavings) and output (wood pellets) are correct, and no key input is missing. HS 440131 is the correct code for wood pellets. HS 440149 (non-agglomerated wood waste and scrap, other than sawdust) fits shavings, though sawdust alone falls under 440141, so the input code is only a partial match. It is still an acceptable match for the combined 'sawdust or wood shavings' name.

**[INCORRECT (hs_code_mismatch)]** Reduction of germanium dioxide to produce germanium metal. Purified germanium dioxide (GeO2), obtain
  - Precursors: Germanium oxides and zirconium dioxide, Hydrogen
  - Products: Gallium, germanium, indium, niobium (columbium) and vanadium; articles thereof, other than unwrought including waste and scrap and powders
  - Rationale: Hydrogen reduction of purified GeO2 to germanium metal (GeO2 + 2H2 -> Ge + 2H2O, at ~650-900 C) is the standard industrial route, and the inputs are correct (water is a byproduct). However, HS 811299 covers articles of gallium, germanium, indium, niobium and vanadium other than unwrought, waste, scrap and powders, whereas the product here is germanium metal as unwrought/powder (HS 811292 for unwrought, waste, scrap and powders). Hydrogen has no HS code listed, and HS 282560 is correct for germanium oxides and zirconium dioxide, so the product code is the main error.

**[CORRECT]** Hydrometallurgical recovery of germanium from end-of-life germanium-containing products such as fibe
  - Precursors: End-of-life germanium-containing products for recycling, Sulfuric Acid
  - Products: Germanium Dioxide
  - Rationale: Hydrometallurgical germanium recovery from end-of-life scrap by acid leaching, then precipitation or solvent extraction, and finally GeO2 (often via GeCl4 hydrolysis) is a documented route. Sulfuric acid is a valid leaching input and GeO2 is a valid product, though other reagents such as HCl and water are omitted. The HS codes are consistent: 854990 covers electrical and electronic waste and scrap, 280700 is sulfuric acid, and 282560 is germanium oxides.

**[CORRECT]** Thermal chlorination process for extracting germanium from recycled germanium-containing materials. 
  - Precursors: End-of-life germanium-containing products for recycling, Chlorine
  - Products: Germanium oxides, Germanium tetrachloride
  - Rationale: Chlorinating germanium-bearing scrap to volatile GeCl4, then distilling it, hydrolyzing it to GeO2 and reducing that with hydrogen, is the standard germanium recovery route. The listed inputs (scrap and chlorine) and outputs (GeCl4 and GeO2) are consistent with it. Water and hydrogen are not listed and the final metal is omitted, but these are minor omissions. The HS codes fit: 854990 (electronic waste and scrap), 280110 (chlorine), 282560 (germanium oxides and zirconium dioxide), and 281219 (other chlorides of non-metals, which covers GeCl4).

**[INCORRECT (hs_code_mismatch)]** Leaching of coal ash or fly ash containing germanium with acid (commonly hydrochloric acid) to extra
  - Precursors: Coal ash and residues containing germanium for extraction, Hydrochloric acid
  - Products: Germanium tetrachloride, Germanium dioxide
  - Rationale: Germanium recovery from coal fly ash by HCl leaching, purification via GeCl4 distillation, then hydrolysis to GeO2 and reduction to metal is a real, well-documented industrial route, and the inputs and outputs are appropriate. HS 262099 (ash and residues containing other metals), 280610 (hydrogen chloride) and 282739 (other chlorides) fit their materials. Germanium dioxide, however, has its own subheading, 2825.60 (germanium oxides and zirconium dioxide), so 282590 (other metal oxides) is the wrong code.

**[CORRECT]** Production of high-purity oxygen gas (compressed or liquefied) via pressure swing adsorption (PSA) o
  - Precursors: Atmospheric Air, Electric Power
  - Products: Oxygen gas (compressed or liquefied, high-purity), Nitrogen (waste or byproduct)
  - Rationale: PSA air separation with zeolite adsorbents is a well-documented process for on-site oxygen generation, with nitrogen adsorbed and then desorbed as the waste stream. Air and electric power are the correct inputs, and oxygen and nitrogen are the correct outputs. The HS codes fit: 2851 covers air (liquid or compressed), 2716 is electrical energy, 280440 is oxygen and 280430 is nitrogen. Minor caveats are that PSA oxygen is typically about 90-95% pure rather than truly high-purity, and liquefaction needs an extra step, but neither makes the description wrong.

**[INCORRECT (incorrect_product_hs_code)]** Industrial production of sulfur dioxide by direct combustion of elemental sulfur in air, producing s
  - Precursors: Sulfur (elemental), industrial grade, Air (oxygen source)
  - Products: Sulfur dioxide (SO2), industrial/commercial grade
  - Rationale: Burning elemental sulfur in air (S + O2 -> SO2) is the standard industrial route to SO2, especially as the first step of the contact process, and the inputs and outputs are appropriate. Sulfur under HS 250300 is correct. However, sulfur dioxide is classified under HS 281129 (other inorganic oxygen compounds of non-metals), not 281119 (other inorganic acids), so the product code is wrong.

**[INCORRECT (hs_code_mismatch_and_mischaracterized_products)]** Production of sulfur dioxide as a byproduct of the Claus process for gas desulfurization, in which h
  - Precursors: Hydrogen sulfide (H2S)-rich gas stream, Air (oxygen source)
  - Products: Sulfur dioxide (SO2), industrial/commercial grade, Elemental Sulfur, recovered
  - Rationale: The Claus process is real: H2S is partially oxidized with air, with about one third burned to SO2 and reacted with the remaining H2S over catalyst to make elemental sulfur. SO2 is an intermediate that is consumed, not a recoverable commercial byproduct, so listing it as an industrial-grade product is misleading. HS 281410 is anhydrous ammonia, not hydrogen sulfide (H2S falls under 281111 or 281119 as other inorganic acids), and HS 281119 is 'other inorganic acids' rather than sulfur dioxide, which is 281129 (other inorganic oxygen compounds of non-metals). Only HS 250300 for sulfur is correct.

**[CORRECT]** Atmospheric distillation of crude oil to obtain atmospheric residue (long residue, refinery bottoms)
  - Precursors: Crude oil (petroleum)
  - Products: Atmospheric residue from crude oil (long residue, refinery bottoms, heavy residue)
  - Rationale: Atmospheric distillation of crude oil is a standard refinery operation. It separates gases, naphtha, kerosene and gas oil overhead and side-draws, and leaves atmospheric (long) residue at the bottom. Crude oil is the correct sole input, and HS 270900 is the correct code for crude petroleum oils. HS 271390 (other residues of petroleum oils) plausibly covers the residue, though some atmospheric residue is traded as residual fuel oil under 2710.

**[CORRECT]** Industrial coking process: Baking blended, low-ash, low-sulphur bituminous coal in coking ovens in t
  - Precursors: Bituminous Coking Coal
  - Products: Coke (coal-derived, metallurgical/industrial grade), Coal Tar, Coke Oven Gas
  - Rationale: High-temperature carbonization of coking coal in by-product coke ovens at about 1000-1100°C in the absence of air is a well-documented process yielding coke, coal tar, and coke oven gas. HS 270112 covers bituminous coal, non-agglomerated, which includes coking coal. HS 270400 covers coke and semi-coke of coal, HS 270600 covers coal tar, and HS 270500 covers coal gas and similar gases, so all codes match their named materials.

**[CORRECT]** Beehive oven coking: Batch process using dome-shaped, firebrick ovens where bituminous coal is carbo
  - Precursors: Bituminous Coking Coal
  - Products: Coke (coal-derived, metallurgical/industrial grade)
  - Rationale: Beehive oven coking is a real, well-documented historical batch process in which bituminous coking coal is carbonized in dome-shaped firebrick ovens, with volatiles burned inside and no byproduct recovery. Coking coal in and coke out are correct; air is an implicit input and the combusted volatiles are not a recovered product. HS 270112 (bituminous coal, non-agglomerated) and HS 270400 (coke and semi-coke of coal) match the named materials.

**[INCORRECT (hs_code_mismatch)]** Production of hydrogen sulfide by direct reaction of hydrogen gas with elemental sulfur at elevated 
  - Precursors: Elemental Sulfur, Hydrogen
  - Products: Hydrogen sulfide (H2S), commercial grade
  - Rationale: Direct synthesis of H2S from hydrogen and molten or vapor sulfur at about 300-450°C is a documented industrial route, for example as feed for the Girdler-Sulfide heavy water process. The inputs and outputs are chemically correct. However, HS 281410 is anhydrous ammonia, not hydrogen sulfide, which is classified under 2811.19. HS 280200 covers only sublimed, precipitated or colloidal sulfur, whereas generic elemental sulfur falls under 2503. Only hydrogen at 280410 is correct.

**[INCORRECT (hs_code_mismatch)]** Recovery and purification of hydrogen sulfide from natural gas (sour gas) or refinery off-gas stream
  - Precursors: Sour natural gas or refinery off-gas containing H2S
  - Products: Hydrogen sulfide (H2S), commercial grade
  - Rationale: Amine scrubbing of sour gas to capture H2S, followed by regeneration (stripping) and purification, is a real industrial process, and H2S is produced commercially this way (also as a byproduct of Claus-feed acid gas). HS 281410 is ammonia, anhydrous, not hydrogen sulfide; H2S falls under 281119 (other inorganic acids of non-metals) or 281390 (sulfides of non-metals), so the product code is a mismatch. The precursor has no HS code listed, though sour natural gas would plausibly be 271111/271121, but the main error is the product code.

**[INCORRECT (hs_code_mismatch)]** Mechanical production of sawdust or wood shavings by sawing, milling, or sanding of raw wood or sawn
  - Precursors: Wood, in logs, in billets, in twigs, in faggots or similar forms, whether or not agglomerated, coniferous, Wood, in logs, in billets, in twigs, in faggots or similar forms, whether or not agglomerated, non-coniferous, Wood, tropical; sawn or chipped lengthwise, sliced or peeled, whether or not planed, sanded or finger-jointed, thicker than 6mm, Wood, beech (Fagus spp.), sawn or chipped lengthwise, sliced or peeled, whether or not planed, sanded or finger-jointed, thicker than 6mm
  - Products: Sawdust or wood shavings (not agglomerated, for fuel or other use)
  - Rationale: Producing sawdust and shavings by sawing, planing, and sanding wood is a real, common process, and logs and sawn timber are reasonable inputs. However, under HS 2022 the sawdust code is 4401.41 (sawdust, not agglomerated), while 4401.49 covers other wood waste and scrap, so the product code does not match its name. HS 4407.27 is specifically sapelli, not tropical wood generally, so that precursor code is also mismatched.

**[CORRECT]** Hydrometallurgical leaching of end-of-life germanium-containing products with acid to dissolve germa
  - Precursors: End-of-life germanium-containing products for recycling
  - Products: Germanium dioxide
  - Rationale: Recovering germanium from end-of-life scrap by acid leaching, purification (for example solvent extraction, or GeCl4 distillation) and hydrolysis or precipitation to GeO2 is a recognized hydrometallurgical route. The input is electronic or electrical scrap and the output is germanium dioxide, which is consistent. HS 8549 covers electrical and electronic waste and scrap, so 854990 is a plausible fit for the input (though it is a generic 'other' code), and 282560 is the correct code for germanium oxides and zirconium dioxide.

**[INCORRECT (hs_code_mismatch)]** Thermal chlorination of end-of-life germanium-containing products to form volatile germanium tetrach
  - Precursors: End-of-life germanium-containing products for recycling
  - Products: Germanium tetrachloride (intermediate), Germanium dioxide (final product, HS Code: 282560)
  - Rationale: Chlorination of germanium scrap to volatile GeCl4, followed by distillation and hydrolysis to GeO2, is the standard industrial route for germanium recycling and refining, so the process is plausible. GeO2 does correspond to HS 282560 (germanium oxides and zirconium dioxide). The precursor code HS 854990 covers parts of electrical scrap/waste (parts of heading 8549), which is a plausible fit for electronic waste, but it is a generic category rather than germanium-bearing products such as fiber optic scrap or germanium optics. The intermediate GeCl4 has no HS code listed, and the code assignment for the precursor is too loose to be considered accurate, so the HS coding is judged inadequate overall.

**[INCORRECT (hs_code_mismatch_precursor)]** Hydrolysis of germanium tetrachloride (GeCl4) to precipitate high-purity germanium dioxide (GeO2), w
  - Precursors: Germanium tetrachloride (GeCl4)
  - Products: Germanium dioxide (GeO2)
  - Rationale: Hydrolysis of GeCl4 to GeO2 is the standard industrial route in germanium refining, and the GeO2 is then reduced with H2 to germanium metal. The main input and output are correct, though water is implicit and the HCl byproduct is not listed. The GeO2 code 282560 (germanium oxides and zirconium dioxide) is correct. The GeCl4 code 282540 is wrong, because it covers nickel oxides and hydroxides, and germanium tetrachloride would fall under a chloride heading such as 2827.39.

**[INCORRECT (hs_code_mismatch)]** Recovery of germanium dioxide (GeO2) from end-of-life germanium-containing products involves several
  - Precursors: End-of-life germanium-containing products for recycling
  - Products: Germanium dioxide (GeO2)
  - Rationale: Germanium recovery from scrap via acid leaching, or via chlorination to GeCl4, distillation and hydrolysis to GeO2, is well documented (the GeCl4 route is standard in germanium refining). Germanium dioxide is correctly classified under HS 282560 (germanium oxides and zirconium dioxide), not 282590 (other inorganic oxides, bases), so the product code is wrong. The precursor code 854990 (parts of electrical apparatus of heading 8549, electronic waste) is a plausible fit for end-of-life electronic scrap, but the product code error makes the record incorrect overall.
