gcloud auth list
gcloud config set project akshaycanodia@gmail.com
gcloud auth list
gcloud config set project academically-454319
gcloud services enable compute.googleapis.com                          storage.googleapis.com                          run.googleapis.com                          artifactregistry.googleapis.com                          aiplatform.googleapis.com                         eventarc.googleapis.com                         sqladmin.googleapis.com                         secretmanager.googleapis.com                         cloudbuild.googleapis.com                         cloudresourcemanager.googleapis.com                         cloudfunctions.googleapis.com
git status
git add .
git commit -m "first commit"
git config --global user.email "akshaycanodia@gmail.com"
git config --global user.name "akshaymittal143"
git commit -m "first commit"
git remote add origin https://github.com/akshaymittal143/academically.git
git push -u origin main
clear
export PROJECT_ID=$(gcloud config get project)
export SERVICE_ACCOUNT_NAME=$(gcloud compute project-info describe --format="value(defaultServiceAccount)")
echo "Here's your SERVICE_ACCOUNT_NAME $SERVICE_ACCOUNT_NAME"
#Cloud Storage (Read/Write):
gcloud projects add-iam-policy-binding $PROJECT_ID   --member="serviceAccount:$SERVICE_ACCOUNT_NAME"   --role="roles/storage.objectAdmin"
#Pub/Sub (Publish/Receive):
gcloud projects add-iam-policy-binding $PROJECT_ID   --member="serviceAccount:$SERVICE_ACCOUNT_NAME"   --role="roles/pubsub.publisher"
gcloud projects add-iam-policy-binding $PROJECT_ID   --member="serviceAccount:$SERVICE_ACCOUNT_NAME"   --role="roles/pubsub.subscriber"
#Cloud SQL (Read/Write):
gcloud projects add-iam-policy-binding $PROJECT_ID   --member="serviceAccount:$SERVICE_ACCOUNT_NAME"   --role="roles/cloudsql.editor"
#Eventarc (Receive Events):
gcloud projects add-iam-policy-binding $PROJECT_ID   --member="serviceAccount:$SERVICE_ACCOUNT_NAME"   --role="roles/iam.serviceAccountTokenCreator"
gcloud projects add-iam-policy-binding $PROJECT_ID   --member="serviceAccount:$SERVICE_ACCOUNT_NAME"   --role="roles/eventarc.eventReceiver"
#Vertex AI (User):
gcloud projects add-iam-policy-binding $PROJECT_ID   --member="serviceAccount:$SERVICE_ACCOUNT_NAME"   --role="roles/aiplatform.user"
#Secret Manager (Read):
gcloud projects add-iam-policy-binding $PROJECT_ID   --member="serviceAccount:$SERVICE_ACCOUNT_NAME"   --role="roles/secretmanager.secretAccessor"
gcloud sql instances create aidemy     --database-version=POSTGRES_14     --cpu=2     --memory=4GB     --region=us-central1     --root-password=1234qwer     --storage-size=10GB     --storage-auto-increase
clear
export PROJECT_ID=$(gcloud config get project)
export BOOK_PROVIDER_URL=$(gcloud run services describe book-provider --region=us-central1 --project=$PROJECT_ID --format="value(status.url)")
curl -X POST -H "Content-Type: application/json" -d '{"category": "Science Fiction", "number_of_book": 2}' $BOOK_PROVIDER_URL
git clone https://github.com/weimeilin79/aidemy-bootstrap.git
cd ~/aidemy-bootstrap/planner/
export BOOK_PROVIDER_URL=$(gcloud run services describe book-provider --region=us-central1 --project=$PROJECT_ID --format="value(status.url)")
cd ~/aidemy-bootstrap/planner/
python -m venv env
source env/bin/activate
export PROJECT_ID=$(gcloud config get project)
pip install -r requirements.txt
python book.py
AcademicAlly
export BOOK_PROVIDER_URL=$(gcloud run services describe book-provider --region=us-central1 --project=$PROJECT_ID --format="value(status.url)")
gcloud config set project academically-454319
cd ~/aidemy-bootstrap/planner/
export BOOK_PROVIDER_URL=$(gcloud run services describe book-provider --region=us-central1 --project=$PROJECT_ID --format="value(status.url)")
gcloud config set project academically-454319
cd ~/aidemy-bootstrap/planner/
export BOOK_PROVIDER_URL=$(gcloud run services describe book-provider --region=us-central1 --project=$PROJECT_ID --format="value(status.url)")
cd ~/aidemy-bootstrap/planner/
python -m venv env
source env/bin/activate
export PROJECT_ID=$(gcloud config get project)
pip install -r requirements.txt
python book.py
pip install -r requirements.txt
export PROJECT_ID=$(gcloud config get project)
python book.py
deactivate
python book.py
cd ~/aidemy-bootstrap/planner/
export BOOK_PROVIDER_URL=$(gcloud run services describe book-provider --region=us-central1 --project=$PROJECT_ID --format="value(status.url)")
cd ~/aidemy-bootstrap/planner/
python -m venv env
source env/bin/activate
export PROJECT_ID=$(gcloud config get project)
pip install -r requirements.txt
python book.py
gcloud sql databases create aidemy-db     --instance=aidemy
git status
git add .
git commit -m "update planner book"
git push
status
git status
cp aidemy-bootstrap/.gitignore .
git status
git add .
git rm --cached aidemy-bootstrap
git rm -f --cached aidemy-bootstrap
git status
cd aidemy-bootstrap/
ls
rm -rf .git/
cd ..
ls
git status
