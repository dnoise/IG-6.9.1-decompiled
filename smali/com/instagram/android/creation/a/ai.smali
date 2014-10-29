.class final Lcom/instagram/android/creation/a/ai;
.super Ljava/lang/Object;
.source "MetadataFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/instagram/android/creation/a/ah;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/ah;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    iput-object p2, p0, Lcom/instagram/android/creation/a/ai;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {}, Lcom/instagram/creation/b/d/a;->a()Lcom/instagram/creation/b/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v2}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "pendingMediaKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/instagram/creation/b/d/a;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/b/a/b;

    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {v1}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ah;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->n()Lcom/instagram/model/a/a;

    move-result-object v0

    sget-object v1, Lcom/instagram/model/a/a;->a:Lcom/instagram/model/a/a;

    if-ne v0, v1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "originalWidth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->d(I)V

    .line 143
    iget-object v0, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-static {v0}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    invoke-virtual {v1}, Lcom/instagram/android/creation/a/ah;->j()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "originalHeight"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/creation/b/a/b;->e(I)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/creation/a/ai;->b:Lcom/instagram/android/creation/a/ah;

    iget-object v1, p0, Lcom/instagram/android/creation/a/ai;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/instagram/android/creation/a/ah;->a(Lcom/instagram/android/creation/a/ah;Landroid/os/Bundle;)V

    goto :goto_0
.end method
