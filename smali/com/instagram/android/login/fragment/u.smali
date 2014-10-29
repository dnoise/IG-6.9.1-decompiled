.class final Lcom/instagram/android/login/fragment/u;
.super Ljava/lang/Object;
.source "LookupFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/o;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/o;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/instagram/android/login/fragment/u;->a:Lcom/instagram/android/login/fragment/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/o;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/u;-><init>(Lcom/instagram/android/login/fragment/o;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter

    .prologue
    .line 210
    iget-object v0, p0, Lcom/instagram/android/login/fragment/u;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->e(Lcom/instagram/android/login/fragment/o;)V

    .line 211
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 201
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    return-void
.end method
