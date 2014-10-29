.class final Lcom/instagram/android/directshare/d/f;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .locals 0
    .parameter

    .prologue
    .line 520
    iput-object p1, p0, Lcom/instagram/android/directshare/d/f;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter
    .parameter "hasFocus"

    .prologue
    .line 523
    if-eqz p2, :cond_0

    .line 524
    iget-object v0, p0, Lcom/instagram/android/directshare/d/f;->a:Lcom/instagram/android/directshare/d/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/directshare/d/c;->b(Lcom/instagram/android/directshare/d/c;Z)Z

    .line 526
    :cond_0
    return-void
.end method
