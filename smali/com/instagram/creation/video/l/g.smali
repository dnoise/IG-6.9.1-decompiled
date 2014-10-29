.class public final Lcom/instagram/creation/video/l/g;
.super Ljava/lang/Object;
.source "VideoImportUtil.java"


# direct methods
.method private static a(Ljava/lang/String;Lcom/instagram/creation/video/i/a;)Landroid/os/Bundle;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 118
    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v1, "ARGUMENT_IMPORT_PATH"

    invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v1, "ARGUMENT_IMPORT_DURATION_MS"

    invoke-virtual {p1}, Lcom/instagram/creation/video/i/a;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 121
    return-object v0
.end method

.method private static a(Ljava/lang/String;J)Lcom/instagram/creation/b/a/a;
    .locals 4
    .parameter
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xa
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lcom/instagram/creation/b/a/a;

    invoke-direct {v0}, Lcom/instagram/creation/b/a/a;-><init>()V

    .line 155
    invoke-virtual {v0, p0}, Lcom/instagram/creation/b/a/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/a;

    .line 156
    invoke-virtual {v0, p1, p2}, Lcom/instagram/creation/b/a/a;->a(J)Lcom/instagram/creation/b/a/a;

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->c(I)Lcom/instagram/creation/b/a/a;

    .line 158
    const/16 v1, 0x3a98

    long-to-int v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->d(I)Lcom/instagram/creation/b/a/a;

    .line 159
    const/high16 v1, 0x3f00

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(F)Lcom/instagram/creation/b/a/a;

    .line 160
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->a(I)Lcom/instagram/creation/b/a/a;

    .line 163
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/instagram/creation/video/l/c;->a(Ljava/io/File;)I

    move-result v1

    .line 164
    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/a;->b(I)Lcom/instagram/creation/b/a/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 170
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 172
    const/16 v2, 0x12

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/instagram/creation/b/a/a;->b(II)V

    .line 178
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Lcom/instagram/creation/b/a/b;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 88
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/creation/b/a/b;->b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    .line 89
    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {v1, v2, p0}, Lcom/instagram/creation/video/c/b;->a(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->i(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/instagram/creation/b/a/b;->a(I)V

    .line 96
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/instagram/creation/video/l/g;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v6, v0, v4

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_data"

    aput-object v3, v2, v7

    const-string v3, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    .line 227
    :goto_0
    if-nez v1, :cond_1

    .line 228
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 237
    :goto_1
    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 231
    const-string v0, "_data"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 232
    if-gez v0, :cond_2

    .line 233
    const-string v0, "video_invalid_url"

    goto :goto_1

    .line 235
    :cond_2
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 236
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private static a()V
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/facebook/az;->video_import_unsupported_file_type:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 57
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3
    .parameter

    .prologue
    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->video_import_remote_url:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 186
    return-void
.end method

.method public static a(Landroid/support/v4/app/s;Ljava/lang/String;Lcom/instagram/creation/video/i/a;ZZ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Lcom/instagram/base/a/a/a;

    invoke-direct {v0, p0}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V

    .line 106
    invoke-static {p1, p2}, Lcom/instagram/creation/video/l/g;->a(Ljava/lang/String;Lcom/instagram/creation/video/i/a;)Landroid/os/Bundle;

    move-result-object v1

    .line 107
    const-string v2, "directShare"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 108
    sget-object v2, Lcom/instagram/creation/video/f/av;->a:Lcom/instagram/creation/video/f/av;

    invoke-static {v1, v2}, Lcom/instagram/creation/video/f/ar;->a(Landroid/os/Bundle;Lcom/instagram/creation/video/f/av;)V

    .line 109
    new-instance v2, Lcom/instagram/creation/video/f/ar;

    invoke-direct {v2}, Lcom/instagram/creation/video/f/ar;-><init>()V

    invoke-virtual {v0, v2, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;

    .line 110
    if-nez p3, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->b()Lcom/instagram/base/a/a/a;

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V

    .line 114
    return-void
.end method

.method private static a(J)Z
    .locals 2
    .parameter

    .prologue
    .line 48
    const-wide/16 v0, 0xbb8

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/net/Uri;)Z
    .locals 2
    .parameter

    .prologue
    .line 242
    const-string v0, "com.android.providers.media.documents"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/os/Bundle;)Z
    .locals 1
    .parameter

    .prologue
    .line 126
    const-string v0, "pendingMediaKey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ARGUMENT_IMPORT_PATH"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ARGUMENT_IMPORT_DURATION_MS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/os/Bundle;Lcom/instagram/creation/b/a/b;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 134
    const-string v1, "ARGUMENT_IMPORT_PATH"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 135
    const-string v2, "ARGUMENT_IMPORT_DURATION_MS"

    const-wide/16 v3, -0x1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 137
    invoke-static {v1, v2, v3}, Lcom/instagram/creation/video/l/g;->a(Ljava/lang/String;J)Lcom/instagram/creation/b/a/a;

    move-result-object v1

    .line 138
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {p1, v4}, Lcom/instagram/creation/b/a/b;->b(Ljava/util/List;)V

    .line 141
    invoke-virtual {p1, v1}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/a;)V

    .line 142
    invoke-virtual {p1, v0}, Lcom/instagram/creation/b/a/b;->a(I)V

    .line 143
    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->k()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/instagram/creation/b/a/b;->d(I)V

    .line 144
    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->l()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/instagram/creation/b/a/b;->e(I)V

    .line 146
    const-string v4, "ARGUMENT_IMPORT_PATH"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 147
    const-string v4, "ARGUMENT_IMPORT_DURATION_MS"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Lcom/instagram/creation/b/a/a;->i()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static a(Lcom/instagram/creation/video/i/a;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p0}, Lcom/instagram/creation/video/i/a;->b()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 69
    invoke-static {}, Lcom/instagram/creation/video/l/g;->a()V

    .line 84
    :goto_0
    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/instagram/creation/video/i/a;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instagram/creation/video/l/g;->a(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    invoke-static {}, Lcom/instagram/creation/video/l/g;->b()V

    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/instagram/creation/video/i/a;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/instagram/creation/video/l/g;->b(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    const-string v1, "Import long clip"

    invoke-virtual {p0}, Lcom/instagram/creation/video/i/a;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/instagram/common/i/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/instagram/creation/video/l/g;->c()V

    goto :goto_0

    .line 84
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a([DI)[D
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 190
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_0

    div-int/lit8 v0, p1, 0x2

    :goto_0
    new-array v11, v0, [D

    move v10, v9

    .line 192
    :goto_1
    if-ge v10, p1, :cond_2

    .line 193
    int-to-double v6, p1

    .line 194
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, p0, v0

    .line 196
    array-length v12, p0

    move v8, v9

    :goto_2
    if-ge v8, v12, :cond_1

    aget-wide v0, p0, v8

    .line 198
    int-to-double v4, v10

    sub-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 199
    cmpg-double v13, v4, v6

    if-gez v13, :cond_3

    move-wide v2, v4

    .line 196
    :goto_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-wide v6, v2

    move-wide v2, v0

    goto :goto_2

    .line 190
    :cond_0
    div-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_1
    div-int/lit8 v0, v10, 0x2

    aput-wide v2, v11, v0

    .line 192
    add-int/lit8 v0, v10, 0x2

    move v10, v0

    goto :goto_1

    .line 206
    :cond_2
    return-object v11

    :cond_3
    move-wide v0, v2

    move-wide v2, v6

    goto :goto_3
.end method

.method private static b()V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/facebook/az;->video_import_too_short:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 61
    return-void
.end method

.method private static b(J)Z
    .locals 2
    .parameter

    .prologue
    .line 52
    const-wide/32 v0, 0x927c0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c()V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/facebook/az;->video_import_too_long:I

    invoke-static {v0}, Lcom/instagram/o/e;->a(I)V

    .line 65
    return-void
.end method
