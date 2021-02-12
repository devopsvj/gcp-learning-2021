# Quickstart: Deploy

This page shows you how to use Cloud Build to deploy a containerized application to Cloud Run.

Note: This quickstart shows you how to deploy an image to Cloud Run, but Cloud Build supports deployments on additional platforms such as App Engine, GKE, and Cloud Functions.
Before you begin
In the Google Cloud Console, on the project selector page, select or create a Google Cloud project.

Note: If you don't plan to keep the resources that you create in this procedure, create a project instead of selecting an existing project. After you finish these steps, you can delete the project, removing all resources associated with the project.
Go to the project selector page

Make sure that billing is enabled for your Cloud project. Learn how to confirm that billing is enabled for your project.

Enable the Cloud Build, Cloud Run, Artifact Registry, and Compute Engine APIs.
Enable the APIs

Install and initialize the Cloud SDK.
If you've already installed Cloud SDK previously, make sure you have the latest available version by running gcloud components update.

Grant permissions
Cloud Build requires Cloud Run Admin and IAM Service Account User permissions before it can deploy an image to Cloud Run.

Open a terminal window.

Set environment variables to store your project ID and project number:

```
PROJECT_ID=$(gcloud config list --format='value(core.project)')
PROJECT_NUMBER=$(gcloud projects describe $PROJECT_ID --format='value(projectNumber)')
```
Grant the Cloud Run Admin role to the Cloud Build service account:

```
gcloud projects add-iam-policy-binding $PROJECT_ID \
    --member=serviceAccount:$PROJECT_NUMBER@cloudbuild.gserviceaccount.com \
    --role=roles/run.admin
```
Grant the IAM Service Account User role to the Cloud Build service account for the Cloud Run runtime service account:

```
gcloud iam service-accounts add-iam-policy-binding \
    $PROJECT_NUMBER-compute@developer.gserviceaccount.com \
    --member=serviceAccount:$PROJECT_NUMBER@cloudbuild.gserviceaccount.com \
    --role=roles/iam.serviceAccountUser
```
Deploy a prebuilt image
You can configure Cloud Build to deploy a prebuilt image that is stored in Artifact Registry to Cloud Run.

To deploy a prebuilt image:

Open a terminal window (if not already open).

Create a new directory named helloworld and navigate into it:

```
mkdir helloworld
cd helloworld
```

Create a file named cloudbuild.yaml with the following contents. This file is the Cloud Build config file. It contains instructions for Cloud Build to deploy the image named us-docker.pkg.dev/cloudrun/container/hello on the Cloud Run service named cloudrunservice.

View on GitHub

```
steps:
- name: 'gcr.io/cloud-builders/gcloud'
  args:
  - 'run'
  - 'deploy'
  - 'cloudrunservice'
  - '--image'
  - 'us-docker.pkg.dev/cloudrun/container/hello'
  - '--region'
  - 'us-central1'
  - '--platform'
  - 'managed'
  - '--allow-unauthenticated'

```
Deploy the image by running the following command:


gcloud builds submit --config cloudbuild.yaml
When the build is complete, you will see an output similar to the following:


DONE
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

ID                                    CREATE_TIME                DURATION  SOURCE                                                                                            IMAGES  STATUS
784653b2-f00e-4c4b-9f5f-96a5f115bef4  2020-01-23T14:53:13+00:00  23S       gs://cloudrunqs-project_cloudbuild/source/1579791193.217726-ea20e1c787fb4784b19fb1273d032df2.tgz  -       SUCCESS
You've just deployed the image hello to Cloud Run.

Run the deployed image
Open the Cloud Run page in the Cloud Console:

Open the Cloud Run page

Select your project and click Open.

You will see the Cloud Run Services page.

In the table, locate the row with the name cloudrunservice, and click cloudrunservice.

The Service details page for cloudrunservice is displayed.

To run the image that you deployed on cloudrunservice, click the URL:

Screenshot of the Cloud Run Service details page

