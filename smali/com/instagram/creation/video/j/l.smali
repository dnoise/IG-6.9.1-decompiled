.class public final Lcom/instagram/creation/video/j/l;
.super Ljava/lang/Object;
.source "VideoFilterParams.java"


# instance fields
.field public final a:Ljava/nio/FloatBuffer;

.field public final b:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;

    .line 17
    iput-object p2, p0, Lcom/instagram/creation/video/j/l;->b:Ljava/nio/FloatBuffer;

    .line 18
    return-void
.end method
