.class final Lcom/instagram/android/a/b/v;
.super Ljava/lang/Object;
.source "PendingMediaRowViewBinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/creation/b/a/b;

.field final synthetic b:Lcom/instagram/android/a/b/u;


# direct methods
.method constructor <init>(Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/instagram/android/a/b/v;->b:Lcom/instagram/android/a/b/u;

    iput-object p2, p0, Lcom/instagram/android/a/b/v;->a:Lcom/instagram/creation/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/instagram/android/a/b/v;->b:Lcom/instagram/android/a/b/u;

    iget-object v1, p0, Lcom/instagram/android/a/b/v;->a:Lcom/instagram/creation/b/a/b;

    invoke-static {v0, v1}, Lcom/instagram/android/a/b/q;->a(Lcom/instagram/android/a/b/u;Lcom/instagram/creation/b/a/b;)V

    .line 54
    return-void
.end method
