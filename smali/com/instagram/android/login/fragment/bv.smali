.class abstract Lcom/instagram/android/login/fragment/bv;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic b:Lcom/instagram/android/login/fragment/an;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 1476
    iput-object p1, p0, Lcom/instagram/android/login/fragment/bv;->b:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/an;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1476
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/bv;-><init>(Lcom/instagram/android/login/fragment/an;)V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/instagram/android/login/fragment/bv;->b:Lcom/instagram/android/login/fragment/an;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/an;->F(Lcom/instagram/android/login/fragment/an;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/instagram/android/login/fragment/bv;->a()V

    .line 1488
    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1478
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1481
    return-void
.end method
