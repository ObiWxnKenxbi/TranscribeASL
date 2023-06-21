<html>
<head>
  <meta charset="UTF-8">
</head>
<body>
  <h1>Transcribe ASL</h1>
  <p>
    Transcribe ASL is a project that aims to transcribe sign language into text using various technologies such as Mediapipe, Wekinator, and Processing.
  </p>
  <h2>Methodology</h2>
  <p>
    The project follows the following methodology:
  </p>
  <ol>
    <li>
      Python: The training data images are processed to extract the coordinates of the hands using Mediapipe, a Google library for computer vision applications.
    </li>
    <li>
      Wekinator: Wekinator is utilized to handle the training process. It receives the hand gesture coordinates as inputs, totaling 42 (21 points in total, including x and y coordinates). Wekinator is configured with 24 outputs corresponding to different classes or letters in ASL. The data is trained to classify the hand gestures into the appropriate letter classes.
    </li>
    <li>
      Processing: The Processing language is employed to map the output classes received from Wekinator to the corresponding letter or word in ASL. The result is then displayed in the Processing interface.
    </li>
  </ol>
  <h2>Results and Future Improvements</h2>
  <p>
    The project currently achieves accurate transcription for some letters, but others may require additional training data to improve classification accuracy. With further refinement and more extensive training, the system has the potential to become a useful tool for real-time ASL translation, particularly in video call applications such as Zoom meetings.
  </p>
  <h2>Usage Instructions</h2>
  <p>
    To use the Transcribe ASL project, follow these steps:
  </p>
  <ol>
    <li>
      Change the path in the Python code to the directory where you want to store the training data.
    </li>
    <li>
      Obtain the coordinates for each letter in ASL by performing individual sign gestures in front of the camera.
    </li>
    <li>
      Configure Wekinator with 24 outputs and set up the classification model with 24 classes, each corresponding to a letter in ASL.
    </li>
    <li>
      Send each letter gesture to Wekinator, mapping them to their corresponding class.
    </li>
    <li>
      Train the data in Wekinator to create an accurate classification model.
    </li>
    <li>
      Open the Processing IDE and run the provided code.
    </li>
    <li>
      Return to Wekinator and start the data processing and classification.
    </li>
    <li>
      Go back to the Python code and run the section responsible for accessing the camera and obtaining the coordinates of your sign gestures.
    </li>
    <li>
      Press "Start Recording" on the Processing interface to begin the transcription process.
    </li>
    <li>
      Perform sign gestures in front of the camera, and the system will attempt to transcribe them into text.
    </li>
  </ol>
  <p>
    Note: It is important to ensure that the training data is representative and diverse to achieve accurate and robust results.
  </p>
  <p>
    Feel free to modify and adapt the project to suit your specific needs. Contributions and improvements are always welcome!
  </p>
  <h2>Dependencies</h2>
  <p>
    The Transcribe ASL project relies on the following dependencies:
  </p>
  <ul>
    <li>Python (version 3.11)</li>
    <li>Mediapipe</li>
    <li>Wekinator</li>
    <li>Processing</li>
  </ul>
  <p>
    Make sure to install the necessary dependencies before running the code.
  </p>
  <h2>YouTube Demo</h2>
  <p>
    Check out the YouTube demo of the Transcribe ASL project: <a href="https://youtu.be/MfwZXKzyL4k">https://youtu.be/MfwZXKzyL4k</a>
  </p>
  <h2>License</h2>
  <p>
    This project is licensed under the <a href="https://www.gnu.org/licenses/agpl-3.0.html">Affero General Public License (AGPL)</a>. The AGPL is a copyleft license that requires any modified or extended versions of the software to be distributed under the same license terms.
  </p>
  <p>
    Feel free to use, modify, and distribute the code according to the terms of the AGPL.
  </p>
  <h2>Acknowledgments</h2>
  <p>
    This project was done as part of the Sound communication class for the Sound and Music Computing master's degree at Universitat Pompeu Fabra.
  </p>
  <p>
    It was made possible by the following libraries and resources:
  </p>
  <ul>
    <li><a href="https://mediapipe.dev/">Mediapipe</a> - A Google library for computer vision and machine learning applications.</li>
    <li><a href="http://www.wekinator.org/">Wekinator</a> - An open-source software for interactive machine learning.</li>
    <li><a href="https://processing.org/">Processing</a> - A flexible software sketchbook and a language for learning how to code within the context of visual arts.</li>
    <li><a href="https://www.kaggle.com/datasets/ardamavi/sign-language-digits-dataset">Arda Mavi</a> - Provider of the Sign Language Digits Dataset used for this project.</li>
  </ul>
  <p>
    Thank you to the developers and contributors of these tools for their invaluable work.
  </p>
</body>
</html>
