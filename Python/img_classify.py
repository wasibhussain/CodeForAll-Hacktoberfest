import tensorflow as tf
from tensorflow.keras.applications import MobileNetV2
from tensorflow.keras.applications.mobilenet_v2 import preprocess_input, decode_predictions
from tensorflow.keras.preprocessing.image import load_img, img_to_array
import numpy as np

# Load the pre-trained MobileNetV2 model
model = MobileNetV2(weights="imagenet")

# Function to classify an image
def classify_image(image_path):
    # Load and preprocess the image
    img = load_img(image_path, target_size=(224, 224))
    img_array = img_to_array(img)
    img_array = preprocess_input(img_array)
    img_array = np.expand_dims(img_array, axis=0)

    # Make predictions
    predictions = model.predict(img_array)
    decoded_predictions = decode_predictions(predictions, top=5)[0]

    # Display the top 5 predictions
    print("Top 5 predictions:")
    for _, label, score in decoded_predictions:
        print(f"{label}: {score:.2%}")

if __name__ == "__main__":
    # Specify the path to the image you want to classify
    image_path = "path_to_your_image.jpg"

    # Classify the image
    classify_image(image_path)
