.class final Lcom/instagram/android/fragment/gf;
.super Ljava/lang/Object;
.source "UserOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/fy;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/fy;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/instagram/android/fragment/gf;->a:Lcom/instagram/android/fragment/fy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 214
    iget-object v1, p0, Lcom/instagram/android/fragment/gf;->a:Lcom/instagram/android/fragment/fy;

    const-string v2, "/legal/libraries/android/"

    invoke-static {}, Lcom/instagram/common/s/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/fragment/gf;->a:Lcom/instagram/android/fragment/fy;

    sget v3, Lcom/facebook/az;->about_this_version:I

    invoke-virtual {v0, v3}, Lcom/instagram/android/fragment/fy;->c(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/instagram/android/fragment/fy;->a(Lcom/instagram/android/fragment/fy;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Build #"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/instagram/android/fragment/gf;->a:Lcom/instagram/android/fragment/fy;

    invoke-virtual {v3}, Lcom/instagram/android/fragment/fy;->n()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/instagram/common/s/a;->a(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
