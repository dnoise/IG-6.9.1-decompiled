.class final Lcom/instagram/android/k/a/b;
.super Lcom/instagram/android/i/c;
.source "UserListAdapter.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/k/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/k/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/instagram/android/k/a/b;->a:Lcom/instagram/android/k/a/a;

    invoke-direct {p0}, Lcom/instagram/android/i/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/instagram/android/k/a/b;->a:Lcom/instagram/android/k/a/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/instagram/android/k/a/a;->j:Lcom/instagram/user/c/a;

    .line 215
    iget-object v0, p0, Lcom/instagram/android/k/a/b;->a:Lcom/instagram/android/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->notifyDataSetChanged()V

    .line 216
    return-void
.end method

.method public final a(Lcom/instagram/user/c/a;)V
    .locals 1
    .parameter

    .prologue
    .line 208
    iget-object v0, p0, Lcom/instagram/android/k/a/b;->a:Lcom/instagram/android/k/a/a;

    iput-object p1, v0, Lcom/instagram/android/k/a/a;->j:Lcom/instagram/user/c/a;

    .line 209
    iget-object v0, p0, Lcom/instagram/android/k/a/b;->a:Lcom/instagram/android/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->notifyDataSetChanged()V

    .line 210
    return-void
.end method
