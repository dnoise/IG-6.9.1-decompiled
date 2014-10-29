.class public final Lcom/instagram/android/g/h;
.super Ljava/lang/Object;
.source "VerifySMSCodeResponse.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    iput-object p1, p0, Lcom/instagram/android/g/h;->a:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/instagram/android/g/h;->b:Z

    .line 12
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/instagram/android/g/h;->b:Z

    return v0
.end method
