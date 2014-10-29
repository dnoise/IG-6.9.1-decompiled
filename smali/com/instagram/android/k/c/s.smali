.class final Lcom/instagram/android/k/c/s;
.super Ljava/lang/Object;
.source "UserListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/android/k/c/r;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/c/r;)V
    .locals 0
    .parameter

    .prologue
    .line 429
    iput-object p1, p0, Lcom/instagram/android/k/c/s;->a:Lcom/instagram/android/k/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/instagram/android/k/c/s;->a:Lcom/instagram/android/k/c/r;

    iget-object v0, v0, Lcom/instagram/android/k/c/r;->a:Lcom/instagram/android/k/c/a;

    invoke-static {v0}, Lcom/instagram/android/k/c/a;->i(Lcom/instagram/android/k/c/a;)V

    .line 433
    return-void
.end method
