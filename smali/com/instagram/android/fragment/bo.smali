.class final Lcom/instagram/android/fragment/bo;
.super Ljava/lang/Object;
.source "FindFacebookFriendsPromptFragment.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bi;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/bi;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/instagram/android/fragment/bo;->a:Lcom/instagram/android/fragment/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/bi;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bo;-><init>(Lcom/instagram/android/fragment/bi;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 136
    invoke-static {}, Lcom/instagram/share/b/a;->b()V

    .line 137
    iget-object v0, p0, Lcom/instagram/android/fragment/bo;->a:Lcom/instagram/android/fragment/bi;

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/bi;->a(Lcom/instagram/android/fragment/bi;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    return-void
.end method
