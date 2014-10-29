.class final Lcom/instagram/android/login/fragment/k;
.super Ljava/lang/Object;
.source "LoginFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/h;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/h;)V
    .locals 0
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/instagram/android/login/fragment/k;->a:Lcom/instagram/android/login/fragment/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter "hasFocus"

    .prologue
    .line 159
    if-eqz p2, :cond_0

    .line 160
    sget-object v0, Lcom/instagram/p/b;->ae:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 162
    :cond_0
    return-void
.end method
