.class final Lcom/instagram/j/c/h;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/j/c/g;


# direct methods
.method constructor <init>(Lcom/instagram/j/c/g;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/instagram/j/c/h;->a:Lcom/instagram/j/c/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewsfeedFragment.BROADCAST_SWITCH_TO_MODE_YOU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/instagram/j/c/h;->a:Lcom/instagram/j/c/g;

    invoke-static {v0}, Lcom/instagram/j/c/g;->a(Lcom/instagram/j/c/g;)Lcom/instagram/j/c/p;

    move-result-object v0

    sget-object v1, Lcom/instagram/j/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/instagram/j/c/p;->a(I)V

    .line 84
    :cond_0
    return-void
.end method
