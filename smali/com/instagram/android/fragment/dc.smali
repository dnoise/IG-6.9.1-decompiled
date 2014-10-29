.class final Lcom/instagram/android/fragment/dc;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/instagram/android/fragment/cr;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cr;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/instagram/android/fragment/dc;->b:Lcom/instagram/android/fragment/cr;

    iput-wide p2, p0, Lcom/instagram/android/fragment/dc;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/instagram/android/fragment/dc;->b:Lcom/instagram/android/fragment/cr;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cr;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/android/fragment/cr;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/instagram/android/fragment/dc;->b:Lcom/instagram/android/fragment/cr;

    iget-wide v2, p0, Lcom/instagram/android/fragment/dc;->a:J

    invoke-static {v1, v0, v2, v3}, Lcom/instagram/android/fragment/cr;->a(Lcom/instagram/android/fragment/cr;Ljava/io/File;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    const-string v0, "MainFeedFragment"

    const-string v1, "Error reading from cached file."

    invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
