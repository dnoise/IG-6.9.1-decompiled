.class final Lcom/instagram/android/creation/a/av;
.super Ljava/lang/Object;
.source "ShareLaterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/au;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/au;)V
    .locals 0
    .parameter

    .prologue
    .line 157
    iput-object p1, p0, Lcom/instagram/android/creation/a/av;->a:Lcom/instagram/android/creation/a/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/instagram/android/creation/a/av;->a:Lcom/instagram/android/creation/a/au;

    iget-object v0, v0, Lcom/instagram/android/creation/a/au;->a:Lcom/instagram/android/creation/a/ar;

    invoke-virtual {v0}, Lcom/instagram/android/creation/a/ar;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->onBackPressed()V

    .line 161
    return-void
.end method
