.class final Lcom/instagram/android/feed/e/c;
.super Ljava/lang/Object;
.source "DelayedMediaPlacer.java"

# interfaces
.implements Lcom/instagram/common/d/a;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/e/a;


# direct methods
.method private constructor <init>(Lcom/instagram/android/feed/e/a;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/instagram/android/feed/e/c;->a:Lcom/instagram/android/feed/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/feed/e/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/instagram/android/feed/e/c;-><init>(Lcom/instagram/android/feed/e/a;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/instagram/android/feed/e/c;->a:Lcom/instagram/android/feed/e/a;

    invoke-virtual {v0}, Lcom/instagram/android/feed/e/a;->c()V

    .line 152
    return-void
.end method
