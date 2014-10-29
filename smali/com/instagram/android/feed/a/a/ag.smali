.class final Lcom/instagram/android/feed/a/a/ag;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/af;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/af;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/ag;->a:Lcom/instagram/android/feed/a/a/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/ag;->a:Lcom/instagram/android/feed/a/a/af;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a/af;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->m(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->b(Landroid/support/v4/app/s;)V

    .line 274
    return-void
.end method
