.class final Lcom/instagram/android/k/a/d;
.super Landroid/os/Handler;
.source "UserListAdapter.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/k/a/a;


# direct methods
.method private constructor <init>(Lcom/instagram/android/k/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/instagram/android/k/a/d;->a:Lcom/instagram/android/k/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/k/a/a;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 252
    invoke-direct {p0, p1}, Lcom/instagram/android/k/a/d;-><init>(Lcom/instagram/android/k/a/a;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter

    .prologue
    .line 256
    iget-object v0, p0, Lcom/instagram/android/k/a/d;->a:Lcom/instagram/android/k/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/k/a/a;->notifyDataSetChanged()V

    .line 257
    return-void
.end method
