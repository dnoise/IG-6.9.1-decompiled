.class final Lcom/instagram/android/fragment/bw;
.super Ljava/lang/Object;
.source "FindFriendsFragment.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/bp;


# direct methods
.method private constructor <init>(Lcom/instagram/android/fragment/bp;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/instagram/android/fragment/bw;->a:Lcom/instagram/android/fragment/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/fragment/bp;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/bw;-><init>(Lcom/instagram/android/fragment/bp;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 125
    invoke-static {}, Lcom/instagram/android/fragment/bp;->d()Ljava/lang/Class;

    .line 126
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lcom/instagram/share/b/a;->b()V

    .line 110
    iget-object v0, p0, Lcom/instagram/android/fragment/bw;->a:Lcom/instagram/android/fragment/bp;

    invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/android/fragment/bp;->b(Lcom/instagram/android/fragment/bp;Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    invoke-static {}, Lcom/instagram/android/fragment/bp;->d()Ljava/lang/Class;

    .line 121
    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-static {}, Lcom/instagram/android/fragment/bp;->d()Ljava/lang/Class;

    .line 116
    return-void
.end method
