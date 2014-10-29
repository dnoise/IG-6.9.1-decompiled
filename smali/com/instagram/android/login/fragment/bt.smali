.class abstract Lcom/instagram/android/login/fragment/bt;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic b:Lcom/instagram/android/login/fragment/an;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/instagram/android/login/fragment/bt;->b:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/an;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1500
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/bt;-><init>(Lcom/instagram/android/login/fragment/an;)V

    return-void
.end method


# virtual methods
.method public abstract a(Z)V
.end method

.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter
    .parameter "hasFocus"

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/instagram/android/login/fragment/bt;->b:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->F(Lcom/instagram/android/login/fragment/an;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1504
    invoke-virtual {p0, p2}, Lcom/instagram/android/login/fragment/bt;->a(Z)V

    .line 1506
    :cond_0
    return-void
.end method
