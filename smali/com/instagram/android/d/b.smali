.class public final Lcom/instagram/android/d/b;
.super Landroid/os/AsyncTask;
.source "AddAvatarHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/d/a;

.field private final b:I

.field private c:Landroid/net/Uri;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/instagram/android/d/a;ILandroid/net/Uri;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    iput p2, p0, Lcom/instagram/android/d/b;->b:I

    .line 108
    iput-object p3, p0, Lcom/instagram/android/d/b;->c:Landroid/net/Uri;

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/d/b;->d:Z

    .line 110
    return-void
.end method

.method private varargs a()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Lcom/instagram/android/d/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/d/b;->d:Z

    move-object v0, v2

    .line 129
    :goto_0
    return-object v0

    .line 119
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/instagram/android/d/b;->b:I

    iget-object v3, p0, Lcom/instagram/android/d/b;->c:Landroid/net/Uri;

    invoke-static {v0, v1, v3}, Lcom/instagram/android/d/d;->a(Landroid/content/Context;ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 120
    invoke-static {v1}, Lcom/instagram/o/c/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 121
    if-eq v1, v0, :cond_1

    .line 122
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string v1, "AddAvatarHelper"

    const-string v3, "An error occurred fetching your image"

    invoke-static {v1, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 129
    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-static {v0, p1}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 138
    iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/graphics/Bitmap;)V

    .line 147
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 148
    return-void

    .line 139
    :cond_1
    iget-boolean v0, p0, Lcom/instagram/android/d/b;->d:Z

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 141
    iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-static {v1}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/au;->profile_anonymous_user:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 144
    :cond_2
    invoke-direct {p0}, Lcom/instagram/android/d/b;->c()V

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 155
    iget v1, p0, Lcom/instagram/android/d/b;->b:I

    if-eqz v1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    new-instance v1, Lcom/instagram/api/f/a;

    iget-object v2, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-static {v2}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/android/login/fragment/an;->n()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/instagram/api/f/a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/instagram/api/f/a;->b()Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;

    move-result-object v1

    .line 160
    :try_start_0
    new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://graph.facebook.com/me?fields=picture&method=GET&access_token="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 171
    const/4 v2, 0x0

    .line 172
    :try_start_1
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 175
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 176
    invoke-interface {v2, v1}, Lch/boye/httpclientandroidlib/HttpEntity;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    if-eqz v2, :cond_2

    .line 179
    :try_start_2
    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 182
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    const-string v1, "picture"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "is_silhouette"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    const/4 v0, 0x1

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    const-string v2, "AddAvatarHelper"

    const-string v3, "Unable to fetch avatar info"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    if-eqz v2, :cond_3

    .line 179
    :try_start_3
    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    :cond_3
    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 189
    :catch_1
    move-exception v1

    .line 190
    const-string v2, "AddAvatarHelper"

    const-string v3, "Error reading FB avatar info"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-static {v1}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/android/login/fragment/an;->l()Landroid/support/v4/app/k;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/facebook/az;->error:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->profile_picture_download_failed:I

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v1, Lcom/facebook/az;->dismiss:I

    new-instance v2, Lcom/instagram/android/d/c;

    invoke-direct {v2, p0}, Lcom/instagram/android/d/c;-><init>(Lcom/instagram/android/d/b;)V

    invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 205
    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/instagram/android/d/b;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-direct {p0, p1}, Lcom/instagram/android/d/b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/instagram/android/d/b;->a:Lcom/instagram/android/d/a;

    invoke-static {v0}, Lcom/instagram/android/d/a;->a(Lcom/instagram/android/d/a;)Lcom/instagram/android/login/fragment/an;

    .line 220
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 221
    return-void
.end method
