.class final Lcom/instagram/android/creation/a/k;
.super Ljava/lang/Object;
.source "DirectShareFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/d;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lcom/instagram/android/creation/a/k;->a:Lcom/instagram/android/creation/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter "hasFocus"

    .prologue
    .line 252
    if-eqz p2, :cond_0

    .line 253
    iget-object v0, p0, Lcom/instagram/android/creation/a/k;->a:Lcom/instagram/android/creation/a/d;

    invoke-static {v0}, Lcom/instagram/android/creation/a/d;->j(Lcom/instagram/android/creation/a/d;)Z

    .line 255
    :cond_0
    return-void
.end method
