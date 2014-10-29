.class final Lcom/instagram/android/fragment/co;
.super Ljava/lang/Object;
.source "LinkedAccountsFragment.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/cl;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/cl;)V
    .locals 0
    .parameter

    .prologue
    .line 121
    iput-object p1, p0, Lcom/instagram/android/fragment/co;->a:Lcom/instagram/android/fragment/cl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/cl;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/co;-><init>(Lcom/instagram/android/fragment/cl;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 125
    invoke-static {}, Lcom/instagram/share/b/a;->b()V

    .line 129
    iget-object v0, p0, Lcom/instagram/android/fragment/co;->a:Lcom/instagram/android/fragment/cl;

    iget-object v1, p0, Lcom/instagram/android/fragment/co;->a:Lcom/instagram/android/fragment/cl;

    invoke-static {v1}, Lcom/instagram/android/fragment/cl;->b(Lcom/instagram/android/fragment/cl;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/cl;->a(Lcom/instagram/android/fragment/cl;Ljava/util/Collection;)V

    .line 130
    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    return-void
.end method
