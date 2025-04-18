# [Not-finished] France_yield_forecasting_DS
A proposal of a public dataset for crop yield forecasting in France.

The main idea :
-----
The objective is to use open-source multi-source data to constitute a multimodal dataset for crop yield forecasting in France. The dataset is designed to favor exploitation by deep learning models.

Broadly speaking, the dataset is composed of **3 modalities** and **4 sources**:


| Source                                         | Mode (data type)                          | Description                                 |
| -----------                                    | -----------                               |-------------                                |
| Harmonized World Soil DB v1.2 and v2.0         | **Static (tabular)**                      | Soil properties (1Km resolution)            |
| AGRESTE                                        | **Static (tabular)**                      | Crop yields at departmental level           |
| NASA - POWER or Open meteo                     | **Time series**                           | Meteorological data (~10Km resolution)      |  
| USGS Landsat data                              | **Images**                                | Satellite images showing vegetation indices |
