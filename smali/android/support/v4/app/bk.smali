.class public abstract Landroid/support/v4/app/bk;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# instance fields
.field d:Landroid/support/v4/app/ba;

.field e:Ljava/lang/CharSequence;

.field f:Ljava/lang/CharSequence;

.field g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1220
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/bk;->g:Z

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1232
    const/4 v0, 0x0

    .line 1233
    iget-object v1, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;

    if-eqz v1, :cond_0

    .line 1234
    iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;

    invoke-virtual {v0}, Landroid/support/v4/app/ba;->d()Landroid/app/Notification;

    move-result-object v0

    .line 1236
    :cond_0
    return-object v0
.end method

.method public final a(Landroid/support/v4/app/ba;)V
    .locals 1
    .parameter

    .prologue
    .line 1223
    iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;

    if-eq v0, p1, :cond_0

    .line 1224
    iput-object p1, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;

    .line 1225
    iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;

    if-eqz v0, :cond_0

    .line 1226
    iget-object v0, p0, Landroid/support/v4/app/bk;->d:Landroid/support/v4/app/ba;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/ba;->a(Landroid/support/v4/app/bk;)Landroid/support/v4/app/ba;

    .line 1229
    :cond_0
    return-void
.end method
