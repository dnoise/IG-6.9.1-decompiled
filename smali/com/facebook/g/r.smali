.class final Lcom/facebook/g/r;
.super Landroid/content/BroadcastReceiver;
.source "SessionTracker.java"


# instance fields
.field final synthetic a:Lcom/facebook/g/q;


# direct methods
.method private constructor <init>(Lcom/facebook/g/q;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/g/r;->a:Lcom/facebook/g/q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/g/q;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/facebook/g/r;-><init>(Lcom/facebook/g/q;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter "intent"

    .prologue
    .line 211
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/facebook/bo;->g()Lcom/facebook/bo;

    move-result-object v0

    .line 213
    if-eqz v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/facebook/g/r;->a:Lcom/facebook/g/q;

    invoke-static {v1}, Lcom/facebook/g/q;->a(Lcom/facebook/g/q;)Lcom/facebook/cc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/bo;->a(Lcom/facebook/cc;)V

    .line 217
    :cond_0
    return-void
.end method
