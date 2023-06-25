#! /bin/bash

if [[ $CONFIGURATION == *"local"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-local.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"mock"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-mock.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"stg1_inspection"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-stg1_inspection.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"stg1"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-stg1.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"stg2_inspection"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-stg2_inspection.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"stg2"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-stg2.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"stg3_inspection"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-stg3_inspection.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"stg3"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-stg3.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"stg4_inspection"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-stg4_inspection.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"stg4"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-stg4.plist $PRODUCT_NAME/GoogleService-Info.plist
elif [[ $CONFIGURATION == *"production"* ]]; then
    cp $PRODUCT_NAME/Firebase/GoogleService-Info-production.plist $PRODUCT_NAME/GoogleService-Info.plist
else
    echo "configuration didn't match to Development, Staging or Production"
    echo $CONFIGURATION
    exit 1
fi
