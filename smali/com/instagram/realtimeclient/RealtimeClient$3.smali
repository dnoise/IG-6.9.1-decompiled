.class Lcom/instagram/realtimeclient/RealtimeClient$3;
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
    .line 71
    iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimeClient$3;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$3;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;

    #calls: Lcom/instagram/realtimeclient/RealtimeClient;->disconnect()V
    invoke-static {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->access$200(Lcom/instagram/realtimeclient/RealtimeClient;)V

    .line 76
    iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimeClient$3;->this$0:Lcom/instagram/realtimeclient/RealtimeClient;

    #calls: Lcom/instagram/realtimeclient/RealtimeClient;->connect()V
    invoke-static {v0}, Lcom/instagram/realtimeclient/RealtimeClient;->access$000(Lcom/instagram/realtimeclient/RealtimeClient;)V

    .line 77
    return-void
.end method
