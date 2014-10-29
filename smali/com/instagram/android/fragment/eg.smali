.class final Lcom/instagram/android/fragment/eg;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ea;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/ea;)V
    .locals 0
    .parameter

    .prologue
    .line 324
    iput-object p1, p0, Lcom/instagram/android/fragment/eg;->a:Lcom/instagram/android/fragment/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/ea;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/eg;-><init>(Lcom/instagram/android/fragment/ea;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 328
    iget-object v0, p0, Lcom/instagram/android/fragment/eg;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ea;->d()Landroid/widget/Filter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/instagram/android/fragment/eg;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v0}, Lcom/instagram/android/fragment/ea;->d()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/fragment/eg;->a:Lcom/instagram/android/fragment/ea;

    invoke-virtual {v1}, Lcom/instagram/android/fragment/ea;->ad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 331
    :cond_0
    return-void
.end method
