.class final Lcom/instagram/android/fragment/da;
.super Ljava/lang/Object;
.source "MainFeedFragment.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cr;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/cr;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/instagram/android/fragment/da;->a:Lcom/instagram/android/fragment/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    .line 195
    iget-object v0, p0, Lcom/instagram/android/fragment/da;->a:Lcom/instagram/android/fragment/cr;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/cr;->n()Landroid/content/Context;

    move-result-object v0

    const-string v1, "checkpointUrl"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "shouldShowWebviewCancelButton"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/instagram/o/d/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 200
    return-void
.end method
