Steps to reproduce
- Make an account in Spotify
- Spotify Developer Account: Use same account and create an application to get the Client ID and Client Secret.
- Spotify Provider for Terraform from terraform providers (https://registry.terraform.io/providers/conradludgate/spotify/latest/docs): Install and configure the Spotify provider for Terraform.
- Need API Key: To interact with Spotify's API, Client ID and Client Secret.
- ### Start with App Creation
1. Go to the [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/).
2. Log in with your Spotify account.
3. Click on "Create an App".
4. Fill in the required details and create the app - Name:My Playlist through Terraform, Description: Create multiple Spotify playlists using Terraform, - Redirect URIs: [http://localhost:27228/spotify_callback]
5. Click on Settings and note down the Client ID and Client Secret.
6. Create a file named .env to store your Spotify application's Client ID and Secret:
SPOTIFY_CLIENT_ID=<your_spotify_client_id>
SPOTIFY_CLIENT_SECRET=<your_spotify_client_secret>
7. Run the Spotify Auth App and Get the API Key. Make sure Docker Desktop is running, and start the authorization proxy server:
docker run --rm -it -p 27228:27228 --env-file ./.env ghcr.io/conradludgate/spotify-auth-proxy
8. You should get “Authorization Successful” Message.
9. Initialize and Apply Terraform Configuration: terraform init, terraform plan, terraform apply --auto-approve
10. Verify Playlists on Spotify
