.class final Lcom/instagram/android/activity/ae;
.super Ljava/lang/Object;
.source "XAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/android/activity/ab;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/ab;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/instagram/android/activity/ae;->b:Lcom/instagram/android/activity/ab;

    iput-object p2, p0, Lcom/instagram/android/activity/ae;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    iget-object v0, p0, Lcom/instagram/android/activity/ae;->b:Lcom/instagram/android/activity/ab;

    iget-object v1, p0, Lcom/instagram/android/activity/ae;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1, v2}, Lcom/instagram/o/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
