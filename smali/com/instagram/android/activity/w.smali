.class final Lcom/instagram/android/activity/w;
.super Ljava/lang/Object;
.source "TumblrAuthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/f;

.field final synthetic b:Lcom/instagram/android/activity/TumblrAuthActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/TumblrAuthActivity;Landroid/support/v4/app/f;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/instagram/android/activity/w;->b:Lcom/instagram/android/activity/TumblrAuthActivity;

    iput-object p2, p0, Lcom/instagram/android/activity/w;->a:Landroid/support/v4/app/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/instagram/android/activity/w;->a:Landroid/support/v4/app/f;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/instagram/android/activity/w;->a:Landroid/support/v4/app/f;

    invoke-virtual {v0}, Landroid/support/v4/app/f;->a()V

    .line 142
    :cond_0
    return-void
.end method
