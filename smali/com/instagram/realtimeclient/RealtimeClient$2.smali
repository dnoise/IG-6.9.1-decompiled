.class Lcom/instagram/realtimeclient/RealtimeClient$2;
.super Ljava/lang/Object;
.source "RealtimeClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/instagram/realtimeclient/RealtimeClient;


# direct methods
.method constructor <init>(Lcom/instagram/realtimeclient/RealtimeClient;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient$2;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$2;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;

    #getter for: Lcom/instagram/realtimeclient/RealtimeClient;->mEventHandler:Lcom/instagram/realtimeclient/RealtimeEventHandler;
    invoke-static {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->access$100(Lcom/instagram/realtimeclient/RealtimeClient;)Lcom/instagram/realtimeclient/RealtimeEventHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/instagram/realtimeclient/RealtimeEventHandler;->onFeedRefreshRequested()V

    .line 69
    return-void
.end method
