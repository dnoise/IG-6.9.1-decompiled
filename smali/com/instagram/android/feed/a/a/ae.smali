.class final Lcom/instagram/android/feed/a/a/ae;
.super Ljava/lang/Object;
.source "MediaOptionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/ad;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/ae;->a:Lcom/instagram/android/feed/a/a/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/ae;->a:Lcom/instagram/android/feed/a/a/ad;

    iget-object v0, v0, Lcom/instagram/android/feed/a/a/ad;->a:Lcom/instagram/android/feed/a/a/x;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/x;->f(Lcom/instagram/android/feed/a/a/x;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/dialog/a;->b(Landroid/support/v4/app/s;)V

    .line 340
    return-void
.end method
