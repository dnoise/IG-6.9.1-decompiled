.class final Lcom/instagram/android/feed/d/e;
.super Ljava/lang/Object;
.source "SponsoredHideHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/d/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/d/d;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/instagram/android/feed/d/e;->a:Lcom/instagram/android/feed/d/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/instagram/android/feed/d/e;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->a(Lcom/instagram/android/feed/d/d;)Landroid/app/Dialog;

    .line 78
    iget-object v0, p0, Lcom/instagram/android/feed/d/e;->a:Lcom/instagram/android/feed/d/d;

    invoke-static {v0}, Lcom/instagram/android/feed/d/d;->b(Lcom/instagram/android/feed/d/d;)Ljava/util/List;

    .line 79
    return-void
.end method
