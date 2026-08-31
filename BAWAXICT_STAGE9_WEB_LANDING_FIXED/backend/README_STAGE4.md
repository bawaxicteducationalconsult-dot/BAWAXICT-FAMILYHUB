# FamilyHub Backend V2.5 — Stage 4: Private Chat + Media Retention

## Scope
Stage 4 adds the private-chat foundation for text, small images and voice/audio attachments while preserving the secure FamilyHub session model from Stage 2/3.

## Media policy (temporary storage-limited phase)
- Images: JPG/JPEG, PNG, WebP; maximum 2 MB per upload.
- Voice/audio: WebM, OGG, MP4, MP3, WAV; maximum 3 MB per upload.
- Every uploaded media object receives an `expires_at` timestamp exactly 3 days after creation.
- Cleanup removes expired media records and files automatically whenever the service cleanup cycle runs.
- Media is stored outside the message text database and referenced by attachment ID.
- Access requires an authenticated FamilyHub session and is limited to the owner or an authorized participant in the private message.
- This 3-day policy is intentionally an upgrade-ready storage policy. Later, cloud object storage and longer retention can replace the policy without changing the message/attachment API contract.

## API additions
- `POST /api/media/upload` — multipart upload using field `file`.
- `GET /api/media/{id}` — authenticated, authorized media retrieval.
- `POST /api/private` — accepts `recipient`, optional `message`, and optional `attachmentId`.
- `GET /api/private?with={username}` — private history now includes attachment metadata when the attachment has not expired.

## Important limitation
The backend validates MIME type and file size. It does not yet inspect the actual audio duration or decode image dimensions/content. Those checks should be added during the cloud object-storage hardening stage.

## Retention note
Current text private-message retention remains 48 hours in this development baseline. Media retention is 3 days as requested. Because cleanup is independent, an unattached upload can remain until its own 3-day expiry; production should also add an orphan-upload cleanup policy.

## Cloud migration target
For production, `MEDIA_DIR` should be replaced with an object-storage binding (for example Cloudflare R2) and the cleanup loop should become a scheduled cleanup job. The public API should remain stable.
