.class public abstract Lcom/instagram/android/widget/w;
.super Ljava/lang/Object;
.source "ShareTableFacebookAuthListener.java"

# interfaces
.implements Lcom/facebook/b/e;


# static fields
.field private static final a:Landroid/os/Handler;


# instance fields
.field private final b:Lcom/instagram/model/a/b;

.field private final c:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/instagram/android/widget/w;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/model/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/instagram/android/widget/w;->c:Landroid/support/v4/app/Fragment;

    .line 25
    iput-object p2, p0, Lcom/instagram/android/widget/w;->b:Lcom/instagram/model/a/b;

    .line 26
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    sget-object v0, Lcom/instagram/android/widget/x;->a:Lcom/instagram/android/widget/x;

    iget-object v1, p0, Lcom/instagram/android/widget/w;->b:Lcom/instagram/model/a/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Z)V

    .line 31
    invoke-static {}, Lcom/instagram/share/b/a;->b()V

    .line 32
    invoke-virtual {p0}, Lcom/instagram/android/widget/w;->b()V

    .line 33
    return-void
.end method

.method public final a(Lcom/facebook/b/a;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    return-void
.end method

.method public abstract b()V
.end method
