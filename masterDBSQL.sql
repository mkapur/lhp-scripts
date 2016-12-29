SELECT 
CRUISE_NUMBER as SOURCE,
FISH_DATA_NUMBER,
LOCATION,
DATE_CAUGHT AS DATE_CAUGHT_or_Processed,
SPECIES,
FORK_LENGTH_CM,
WEIGHT_KG,
MACRO_SEX,
GONAD_WEIGHT_G,
NOTES,
VESSEL,
DRIFT_NUMBER,
START_DRIFT_TIME,
START_DEPTH_FM,
END_DRIFT_TIME,
END_DEPTH_FM,
START_LATDD,
START_LONGDD,
LABEL_SPP_CODE,
OTOLITHS,
LENGTH_L,
WIDTH_L,
THICKNESS_L,
WEIGHT_L,
LENGTH_R,
WIDTH_R,
THICKNESS_R,
WEIGHT_R,
OTOLITH_NOTES,
OTOLITH_LOCATION
FROM CRUISE_MASTER
UNION
SELECT
'RFP' AS SOURCE,
SPECIMEN_ID_NUMBER AS FISH_DATA_NUMBER,
LOCATION,
DATE_PROCESSED AS DATE_CAUGHT_or_Processed,
SPECIES,
TO_CHAR(FORK_LENGTH_CM) as FORK_LENGTH_CM,
TO_CHAR(BODY_WEIGHT_KG) as WEIGHT_KG,
MACRO_SEX,
TO_CHAR(GONAD_WEIGHT_G) AS GONAD_WEIGHT_G,
NOTES,
null as VESSEL,
NULL AS DRIFT_NUMBER,
NULL AS START_DRIFT_TIME,
NULL AS START_DEPTH_FM,
NULL AS END_DRIFT_TIME,
NULL AS END_DEPTH_FM,
NULL AS START_LATDD,
NULL AS START_LONGDD,
NULL AS LABEL_SPP_CODE,
NULL AS OTOLITHS,
NULL AS LENGTH_L,
NULL AS WIDTH_L,
NULL AS THICKNESS_L,
NULL AS WEIGHT_L,
NULL AS LENGTH_R,
NULL AS WIDTH_R,
NULL AS THICKNESS_R,
NULL AS WEIGHT_R,
NULL AS OTOLITH_NOTES,
NULL AS OTOLITH_LOCATION
FROM RFP_BIOSAMPLING
UNION
SELECT
'SAP' AS SOURCE,
SPECIMEN_ID_NUMBER AS FISH_DATA_NUMBER,
LOCATION,
DATE_PROCESSED AS DATE_CAUGHT_or_Processed,
SPECIES,
TO_CHAR(FORK_LENGTH_CM) as FORK_LENGTH_CM,
TO_CHAR(BODY_WEIGHT_KG) as WEIGHT_KG,
MACRO_SEX,
TO_CHAR(GONAD_WEIGHT_G) AS GONAD_WEIGHT_G,
NOTES,
NULL AS  VESSEL,
NULL AS DRIFT_NUMBER,
NULL AS START_DRIFT_TIME,
NULL AS START_DEPTH_FM,
NULL AS END_DRIFT_TIME,
NULL AS END_DEPTH_FM,
NULL AS START_LATDD,
NULL AS START_LONGDD,
NULL AS LABEL_SPP_CODE,
NULL AS OTOLITHS,
NULL AS LENGTH_L,
NULL AS WIDTH_L,
NULL AS THICKNESS_L,
NULL AS WEIGHT_L,
NULL AS LENGTH_R,
NULL AS WIDTH_R,
NULL AS THICKNESS_R,
NULL AS WEIGHT_R,
NULL AS OTOLITH_NOTES,
NULL AS OTOLITH_LOCATION
FROM SAP_BIOSAMPLING
UNION
SELECT
'Vendors' AS SOURCE,
FISH_DATA_NUMBER,
LOCATION,
DATE_PROCESSED AS DATE_CAUGHT_or_Processed,
SPECIES,
TO_CHAR(FORK_LENGTH_CM) as FORK_LENGTH_CM,
TO_CHAR(BODY_WEIGHT_KG) AS WEIGHT_KG,
MACRO_SEX,
GONAD_WEIGHT_G,
NOTES,
VESSEL,
NULL AS DRIFT_NUMBER,
NULL AS START_DRIFT_TIME,
DEPTH_FM AS START_DEPTH_FM,
NULL AS END_DRIFT_TIME,
NULL AS END_DEPTH_FM,
LAT_DD AS START_LATDD,
LONG_DD AS START_LONGDD,
NULL AS LABEL_SPP_CODE,
NULL AS OTOLITHS,
NULL AS LENGTH_L,
NULL AS WIDTH_L,
NULL AS THICKNESS_L,
NULL AS WEIGHT_L,
NULL AS LENGTH_R,
NULL AS WIDTH_R,
NULL AS THICKNESS_R,
NULL AS WEIGHT_R,
OTOLITH_NOTES,
OTOLITH_LOCATION
#FROM VENDOR_PURCHASES