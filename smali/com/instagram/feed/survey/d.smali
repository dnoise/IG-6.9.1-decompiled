.class public final enum Lcom/instagram/feed/survey/d;
.super Ljava/lang/Enum;
.source "MultiQuestionSurvey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/feed/survey/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/feed/survey/d;

.field public static final enum b:Lcom/instagram/feed/survey/d;

.field private static final synthetic d:[Lcom/instagram/feed/survey/d;


# instance fields
.field final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 161
    new-instance v0, Lcom/instagram/feed/survey/d;

    const-string v1, "SINGLE"

    const-string v2, "single"

    invoke-direct {v0, v1, v3, v2}, Lcom/instagram/feed/survey/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/feed/survey/d;->a:Lcom/instagram/feed/survey/d;

    .line 162
    new-instance v0, Lcom/instagram/feed/survey/d;

    const-string v1, "MULTIPLE"

    const-string v2, "multiple"

    invoke-direct {v0, v1, v4, v2}, Lcom/instagram/feed/survey/d;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/instagram/feed/survey/d;->b:Lcom/instagram/feed/survey/d;

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/feed/survey/d;

    sget-object v1, Lcom/instagram/feed/survey/d;->a:Lcom/instagram/feed/survey/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/feed/survey/d;->b:Lcom/instagram/feed/survey/d;

    aput-object v1, v0, v4

    sput-object v0, Lcom/instagram/feed/survey/d;->d:[Lcom/instagram/feed/survey/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 167
    iput-object p3, p0, Lcom/instagram/feed/survey/d;->c:Ljava/lang/String;

    .line 168
    return-void
.end method

.method static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/survey/d;
    .locals 2
    .parameter

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getValueAsString()Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "single"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    sget-object v0, Lcom/instagram/feed/survey/d;->a:Lcom/instagram/feed/survey/d;

    .line 179
    :goto_0
    return-object v0

    .line 178
    :cond_0
    const-string v1, "multiple"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    sget-object v0, Lcom/instagram/feed/survey/d;->b:Lcom/instagram/feed/survey/d;

    goto :goto_0

    .line 181
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/feed/survey/d;
    .locals 1
    .parameter "name"

    .prologue
    .line 160
    const-class v0, Lcom/instagram/feed/survey/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/feed/survey/d;

    return-object v0
.end method

.method public static values()[Lcom/instagram/feed/survey/d;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/instagram/feed/survey/d;->d:[Lcom/instagram/feed/survey/d;

    invoke-virtual {v0}, [Lcom/instagram/feed/survey/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/feed/survey/d;

    return-object v0
.end method
