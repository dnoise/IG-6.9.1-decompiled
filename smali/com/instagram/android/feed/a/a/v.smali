.class final Lcom/instagram/android/feed/a/a/v;
.super Landroid/app/Dialog;
.source "LegacyVideoPlayerFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/a/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/a/a/t;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/instagram/android/feed/a/a/v;->a:Lcom/instagram/android/feed/a/a/t;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/instagram/android/feed/a/a/v;->a:Lcom/instagram/android/feed/a/a/t;

    invoke-static {v0}, Lcom/instagram/android/feed/a/a/t;->b(Lcom/instagram/android/feed/a/a/t;)V

    .line 130
    return-void
.end method
