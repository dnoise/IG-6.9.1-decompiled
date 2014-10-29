.class final Lcom/instagram/android/d/h;
.super Ljava/lang/Object;
.source "AvatarHelper.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/instagram/android/d/f;


# direct methods
.method private constructor <init>(Lcom/instagram/android/d/f;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/instagram/android/d/h;->a:Lcom/instagram/android/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/d/f;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    invoke-direct {p0, p1}, Lcom/instagram/android/d/h;-><init>(Lcom/instagram/android/d/f;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 284
    invoke-static {}, Lcom/instagram/share/b/a;->b()V

    .line 285
    iget-object v0, p0, Lcom/instagram/android/d/h;->a:Lcom/instagram/android/d/f;

    invoke-static {v0}, Lcom/instagram/android/d/f;->c(Lcom/instagram/android/d/f;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/d/i;

    invoke-direct {v1, p0}, Lcom/instagram/android/d/i;-><init>(Lcom/instagram/android/d/h;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 300
    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    return-void
.end method
